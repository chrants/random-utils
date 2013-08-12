def get_files
  files = Dir['lib/*.rb'] + Dir['bin/*'] + Dir['[A-Z]*'] + Dir['test/**/*']
  files.reject { |fn| fn.include? "CVS" }
end

Gem::Specification.new do |s|
  s.name        = 'random-utils'
  s.version     = '0.2.0'
  s.summary     = "Fast and Efficient helper methods!"
  s.description = "Efficient random number and alpha-numeric string ('tokens') utilities"
  s.author      = 'thejava'
  s.email       = 'tschoepe.christian@gmail.com'
  s.files       = get_files()
  #s.homepage    = 'https://rubygems.org/gems/example'
end