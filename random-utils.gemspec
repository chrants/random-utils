Gem::Specification.new do |s|
  files = Dir['lib/*.rb'] + Dir['bin/*'] + Dir['[A-Z]*'] + Dir['test/**/*']
  files.reject { |fn| fn.include? "CVS" }

  s.name        = 'random-utils'
  s.version     = '0.2.2'
  s.date		= Time.now.strftime("%F")
  s.summary     = "Fast and Efficient helper methods!"
  s.description = "Efficient random number and alpha-numeric string ('tokens') utilities"
  s.author      = 'thejava'
  s.email       = 'tschoepe.christian@gmail.com'
  s.files       = files
  s.license		= 'MIT'
  #s.homepage    = 'https://rubygems.org/gems/example'
end