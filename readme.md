### Messenger Bot
Required constants with API keys should be saved to .env file in the project root.

To run the server simply type `rerun 'rackup'` in the terminal. When developing I used ngrok, to make some port public, and then started my app there. In this situation you would add `-p 3030`, where 3030 is your public port number.

Next steps:
- [ ] Add possibility to see who died and who was born
- [ ] Handle case when message is too long
- [ ] Integrate testing
- [ ] Maybe add some webview to list all the events
- [ ] Cache responses for certain days (some kind of CRON)