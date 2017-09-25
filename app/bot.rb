include Facebook::Messenger

Bot.on :message do |message|
  message.mark_seen
  message.typing_on

  if message.text == 'today'
    random_fact = HistoryService.select_random
    message.reply(text: "Year #{random_fact['year']}. #{random_fact['text']}")
    message.reply(
      attachment: {
        type: 'template',
        payload: {
          template_type: 'button',
          text: 'Read more about:',
          buttons: random_fact['links'].map { |link|
            { type: 'web_url', title: link['title'], url: link['link'] }
          }
        }
      }
    )
  else
    message.reply(text: 'Hey! If you type "today", I will tell you what some random historical fact from today.')
  end
end
