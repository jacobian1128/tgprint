# tgprint
TGPRINT send an image to a Telegram bot from MATLAB

You can choose sending mode:  
1. tgprint('photo'): send an image w/ compression using sendPhoto of Telegram Bot API
2. tgprint('document'): send an image w/o compression using sendDocument of Telegram Bot API

Example: 

```
figure(1);
plot(x,y);
tgprint();
 ```
 
This uses [Telegram Bot API](https://core.telegram.org/bots/api). You MUST define token and chat_id before use, which are the authorization token of the target Telegram bot, and the identifier or username of the target chat.   
Please refer the following post:
[Creating a Telegram bot for personal notifications](https://www.forsomedefinition.com/automation/creating-telegram-bot-notifications/).

In addition, this uses [urlreadpost](https://www.mathworks.com/matlabcentral/fileexchange/27189-urlreadpost-url-post-method-with-binary-file-uploading) by Dan Eills from File Exchange, MathWorks.

Screenshot:

![](https://github.com/jacobian1128/tgprint/blob/master/screenshot.png)
