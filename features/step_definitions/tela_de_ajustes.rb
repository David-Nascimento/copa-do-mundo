Given('que eu esteja na tela principal do app') do
  @ajustes.partida_screen
end

When('eu clicar no icone de ajustes') do
  @ajustes.ajustes_screen
end

When('seguir para a tela de perfil') do
  @ajustes.perfil_screen
end

Then('deve ser apresentado a tela para efetuar o login') do
  @ajustes.login_screen
end