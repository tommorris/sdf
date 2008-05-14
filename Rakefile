require 'rubygems'
require 'rake'

task :default => [:test]

desc "Test stylesheet with example HTML"
task :test do
  sh "java -jar /Applications/oxygen/lib/fop.jar -xml sdf_example.html -xsl stylesheet.xsl -pdf output.pdf"
  sh "open output.pdf"
end