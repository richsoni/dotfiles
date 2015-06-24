#! /usr/bin/env ruby
require 'pathname'

IMAGE_PREFIXES = %w{.jpeg .jpg .png}
PREFIX = '/home/rich/Music'
file = `mpc current -f %file%`
path = Pathname.new("#{PREFIX}/#{file}")
images = Dir.glob("#{path.dirname}/**/*")
  .map {|path| Pathname.new(path)}
  .select {|path| IMAGE_PREFIXES.index(path.extname)}
  .map(&:to_s)

if images.length
  image = images.grep(/front/)[0] || images.sample
  puts image
  `gsettings set org.gnome.desktop.background picture-uri "file:///#{image}"`
end

