function tgprint(varargin)

options = 'document';
if nargin > 0
    options = varargin{1};
end

filename = 'temp.png';
if exist(filename,'file')
    warning('temporay file ''%s'' wil be overwritten!',filename);
end

print(gcf,filename,'-dpng');

f = fopen(filename,'rb');
d = fread(f,Inf,'*uint8')';
fclose(f);

% default token and chat_id
token = '430183280:AAEoNtMwQQFxMhE7VP9hwQnHWI-RAtyD9No'; % @tgprintfbot
chat_id = '59233348';

if strcmpi(options,'photo')
    sendstr = ['https://api.telegram.org/bot',token,'/sendPhoto'];
    urlreadpost(sendstr,{'chat_id',chat_id,'photo',d}); 
else
    sendstr = ['https://api.telegram.org/bot',token,'/sendDocument'];
    urlreadpost(sendstr,{'chat_id',chat_id,'document',d}); 
end

end
