require "rubygems"
require "chunky_png"
require "base64"

module Sass::Script::Functions
  
  def png_pixelate(c, dir = "rgbapng")
    color = ChunkyPNG::Color.rgba(c.red, c.green, c.blue, (c.alpha * 100 * 2.55).round)
    image = ChunkyPNG::Image.new(1,1, color)
    file  = File.join(dir, ChunkyPNG::Color.to_hex(color).gsub(/^#/, "") + ".png")
    path  = File.join(Compass.configuration.images_path, file)
        
    if !File.exists?(path) || options[:force]
      puts "Writing #{file}"
      Dir.mkdir(dir) unless File.exists?(dir)
      image.save(path)
    end
    
    Sass::Script::String.new(file)
  end

  def png_base64(c)
    color = ChunkyPNG::Color.rgba(c.red, c.green, c.blue, (c.alpha * 100 * 2.55).round)
    image = ChunkyPNG::Image.new(1,1, color)
    data  = Base64.encode64(image.to_blob).gsub("\n", "")
    
    Sass::Script::String.new("url('data:image/png;base64,#{data}')")
  end
  
end
