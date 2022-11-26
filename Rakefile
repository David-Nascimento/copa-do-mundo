desc 'Executar os testes de aceitação com a plataforma selecionada (ios|android) Ex.: acceptance[perfil]'
task :acceptance,:tags do |t, args|
  sh "bundle exec cucumber -p android --format AllureCucumber::CucumberFormatter --out allure-results/android/ -t @#{args[:tags]} -f pretty"
end