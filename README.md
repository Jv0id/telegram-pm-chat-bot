# telegram-pm-chat-bot

Telegram 私聊机器人
Telegram Private Message Chat Bot

**⚠⚠⚠本项目已进入随缘更新状态，如您对使用 `.NET` 没有意见的话，可考虑使用 [pmcenter](https://github.com/Elepover/pmcenter) 作为PM机器人的解决方案**  
**⚠⚠⚠Warning: This bot is no longer under maintenance. You are better off with other solutions.**

## 部署

```shell
git clone https://github.com/Jv0id/TelegramBotReaderBook.git
vi config.json
docker build -t myapp:v1 .
docker run -d --name telegram_pm_bot --restart always myapp:v1
```
### config.json

```json
{
    "Admin": 123123,
    "Lang": "zh",
    "Token": "123123:AAHdTBF84Mzd5ko_JSEE_wmiwRHRrzl21X0",
    "Username": "@pm_hahahhahaah_bot",
    "ID": 1965556062
}
```
### 参数说明

```shell
# Admin: 管理员id
# lang: 语言，默认zh，可选 en, id, zh, zh_moe1
# token: bot token
# username: bot名，需要加@
# ID: bot的id 
```

## 使用 (Usage)

### 回复 (Reply)
直接回复机器人转发过来的消息即可回复，支持文字、贴纸、图片、文件、音频和视频

Reply directly to the message forwarded by the robot to reply. You can reply text, sticker, photo, file, audio, voice and video.

### 查询用户身份 (Inquire sender identity)
部分转发来的消息不便于查看发送者身份，可以通过回复该消息`/info`查询

You can reply `/info` to the message which you want to get its sender's info more clearly.

### 消息发送提示 (Message sending notification)
向机器人发送指令`/togglenotification`可开启/关闭消息发送提示

效果：
* 对管理员：回复用户后，如无出错则不会提示“已回复”
* 对用户：发送消息后，机器人不会回复“已收到”

Send the command `/togglenotification` to the bot to enable/disable the message sending notification

Effect:
* For admin: After replying to the user, if there is no error, it will not prompt "replied"
* For users: After sending a message, the bot will not reply "received"

### 封禁与解禁 (Ban and unban)
向一条消息回复`/ban`可禁止其发送者再次发送消息

向一条消息回复`/unban`或发送`/unban <数字ID>`可解除对此用户的封禁

Reply `/ban` to a message to block the sender of the message from sending messages to you

Reply `unban` to a message or send `/unban <User ID>` to unban a user

## 可用指令 (Available commands)
| Command                   | 用途                   |
| :---                      | :---                   |
| /ping                     | 确认机器人是否正在运行   |
| /setadmin                 | 设置当前用户为管理员     |
| /togglenotification       | 切换消息发送提示开启状态 |
| /info                     | 查询用户身份            |
| /ban                      | 封禁用户                |
| /unban <数字ID (可选)>     | 解封用户                |

| Command                | Usage                                      |
| :---                   | :---                                       |
| /ping                  | Check if the bot is running                |
| /setadmin              | Set the current user as admin              |
| /togglenotification    | Toggle message sending notification status |
| /info                  | Inquire sender identity                    |
| /ban                   | Ban a user                                 |
| /unban <ID (optional)> | Unban a user                               |
