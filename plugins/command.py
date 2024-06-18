#!/usr/bin/env python3


### Importing
# Importing Common Files
from botModule.importCom import *


### Start & Help Handler
@Client.on_message(filters.private & filters.command(["start", "help"]))
async def start_help_handler(
    bot : Update,
    msg : Message
    ):
    if msg.text == "/start":
        text_msg = (
            "<b>Hi, I am MegaUploaderBot🤖 Created and My Developer🧑‍💻 .</b>\n\n"
            "And I support:-\n"
            "1. <u>Direct Downloading Link</u>\n"
            "2. <u>Telegram File</u>\n"
            "3. <u>Youtube URL</u>\n\n\n"
            f"{to_login}\n"
            "😊We will store your login detail on our database."
        )
    else:
        text_msg = (
            f"{to_login}\n"
            "<b>After login😊 send Direct Downloading Link, Youtube URL or any Telegram File.\n\n"
            "To remove your account from Database use /revoke.</b>"
        )

    await msg.reply_text(text_msg)

