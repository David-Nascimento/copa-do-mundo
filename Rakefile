desc 'Testes com android local'
task :android,:tags do |t, args|
  sh "bundle exec cucumber --format AllureCucumber::CucumberFormatter --out allure-results/android/ -t #{args[:tags]} -f pretty"
end