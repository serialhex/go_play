#!/usr/bin/env ruby

# a spiffy utility to compile & link go programs, because doing it manually sucks nuts!
#
# though i should really be doing the final for my logic class... in fact, that would be
# the logical thing to do, no?  get good grades so spiffy people can hire me?
#
# yeah, i think i'm gonna go eat first though
#  serialhex

ARGV.each do |file|
  unless( file =~ /.go/ )
    puts "-- skipping #{file}, wrong type"
    next
  end
  puts 'compiling: ' + file
  filename = file.gsub '.go', ''
  linkname = filename + '.8'
  system "8g -o #{linkname} #{file}"
  puts 'linking to: ' + filename
  system "8l -o #{filename} #{linkname}"
end