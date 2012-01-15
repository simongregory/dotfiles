#!/usr/bin/env ruby

# Half-inched from @ryanb/dotfiles
#
# Lists all files in ~src when invoked with `c `tab-tab and relying on
# your shell loading: function c { cd ~/code/$1; }

class ProjectCompletion
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
    `ls ~/code/`.split
  end
end

puts ProjectCompletion.new(ENV["COMP_LINE"]).matches
exit 0
