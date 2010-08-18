Gem::Specification.new do |s|
  
  # Gem Details
  s.name        = "compass-rgbapng"
  s.version     = "0.1.1"
  s.authors     = ["Aaron Russell", "Benjamin Doherty"]
  s.date        = "2010-08-18"
  s.summary     = %q{Compass plugin for providing cross-browser compatible RGBA support by creating transparent PNGs on the fly for browsers that don't support RGBA.}
  s.description = %q{Compass plugin for providing cross-browser compatible RGBA support by creating transparent PNGs on the fly for browsers that don't support RGBA. Uses the pure Ruby ChunkyPNG library for hassle free install and deployment.}
  s.email       = "aaron@gc4.co.uk"
  s.homepage    = "http://github.com/aaronrussell/compass-rgbapng"

  # Gem Files
  s.files  = %w(LICENSE README.md)
  s.files += Dir.glob("lib/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc          = false
  s.require_paths     = ["lib"]
  s.rubygems_version  = %q{1.3.6}
  
  s.add_dependency "compass",     ">= 0.10.0"
  s.add_dependency "chunky_png",  ">= 0.8.0"
  
end
