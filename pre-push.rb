#! /usr/bin/env ruby

require "highline/import"

puts ARGV[0]
puts ARGV[1]

say("Please complete this 3 step checklist before pushing to origin/master")
ask("<%= color('1.', BOLD) %> Third-party code review completed?") { |q| q.default = 'no' }
ask("<%= color('2.', BOLD) %> Interactively rebased with recently <%= color('fetched', BOLD) %> master?") { |q| q.default = 'no' }
ask("<%= color('3.', BOLD) %> CHANGELOG file updated?") { |q| q.default = 'no' }
ask("<%= color('4.', BOLD) %> All specs passing?") { |q| q.default = 'no' }
ask("<%= color('5.', BOLD) %> All in-house gems using correct source, branch or version?") { |q| q.default = 'no' }
