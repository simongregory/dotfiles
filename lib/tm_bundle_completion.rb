#!/usr/bin/env ruby

# See completions.sh then functions.sh to see where/how this works
# via @ryban

class TMBundleCompletion

  AVIAN = "#{ENV["HOME"]}/Library/Application Support/Avian/Bundles"
  TM = "#{ENV["HOME"]}/Library/Application Support/TextMate/Bundles"

  def initialize(command)
    @command = command
  end

  def matches
    projects.select do |task|
      task[0, typed.length] == typed
    end
  end

  def typed
    @command[/\s(.+?)$/, 1] || ''
  end

  def projects
    list.each { |item|
      item.gsub!(' ', '\ ')
      item.sub!(/$/, ".tmbundle")
    }
  end

  def list
    `ls "#{AVIAN}"`.split(/\.tmbundle\s*/) + `ls "#{TM}"`.split(/\.tmbundle\s*/)
  end
end

puts TMBundleCompletion.new(ENV["COMP_LINE"]).matches
exit 0
