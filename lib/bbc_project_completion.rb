#!/usr/bin/env ruby

# Lists all files in ~/bbc and ~/ipd when invoked
# with `bbc `tab-tab
#
# See completions.sh then functions.sh to see
# where/how this works. All via @ryanb/dotfiles

class BBCProjectCompletion

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
    `ls ~/bbc/`.split + `ls ~/ipd/`.split
  end
end

puts BBCProjectCompletion.new(ENV["COMP_LINE"]).matches
exit 0
