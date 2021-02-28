require 'slack-notify'
require 'clockwork'
require 'active_support/time'
require 'dotenv/load'


module Clockwork
  every(0.1.minutes, 'client.notify') do
  client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
  client.notify("Hello There!")
  end
end



# ここに、slackにメッセージを送る処理を書き込む。
