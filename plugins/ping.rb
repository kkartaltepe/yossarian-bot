#  -*- coding: utf-8 -*-
#  ping.rb
#  Author: William Woodruff
#  ------------------------
#  A canonical Cinch plugin for yossarian-bot.
#  Responds to a user's 'ping' with a 'pong'.
#  ------------------------
#  This code is licensed by William Woodruff under the MIT License.
#  http://opensource.org/licenses/MIT

require_relative 'yossarian_plugin'

class Ping < YossarianPlugin
  include Cinch::Plugin
  use_blacklist

  def usage
    '!ping - Ping the bot for a timestamped response.'
  end

  def match?(cmd)
    cmd =~ /^(!)?ping$/
  end

  match /ping$/, method: :ping

  def ping(m)
    # I've got them and their little dubs too!
    m.reply "pong #{Time.now.to_i.remove_dubs}", true
  end
end
