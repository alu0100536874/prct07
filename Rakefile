$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :bin

desc "Ejecutar las espectativas de la clase Fraccion"
task :bin do
        sh "rspec -I. pruebas_rspec/rspec_pruebas.rb"
end

desc "Ejecutar con documentacion"
task :test do
        sh "rspec -I. pruebas_rspec/rspec_pruebas.rb --format documentation"
end

desc "Ejecutar con formato html"
task :thtml do
        sh "rspec -I. s pruebas_rspec/rspec_pruebas.rb --format html"
end