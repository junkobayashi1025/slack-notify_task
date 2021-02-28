require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
  every(3.minutes, 'client.notify') do
    client = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
    client.notify("Hello There!")
  end
end



# ここに、slackにメッセージを送る処理を書き込む。
