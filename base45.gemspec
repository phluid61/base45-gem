Gem::Specification.new do |s|
  s.name     = 'base45'
  s.version  = '1.0.0'
  s.date     = '2022-02-05'
  s.summary  = %(Base45 Encoding/Decoding)
  s.description = <<EOS
== Base45

A module that can Encode/Decode a string in Base45.
EOS
  s.authors  = ['Matthew Kerwin'.freeze]
  s.email    = ['matthew@kerwin.net.au'.freeze]
  s.files    = Dir['lib/**/*.rb']
  #s.test_files=Dir['test/*.rb']
  s.homepage = 'http://phluid61.github.com/base45-gem'.freeze
  s.license  = 'ISC'.freeze
end
