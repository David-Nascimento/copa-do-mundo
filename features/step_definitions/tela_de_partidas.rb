Given('carrego minha pagina de ajustes') do
  @screen = Screens.new
end

Given('que eu esteja na tela principal do app') do
  @screen.is_ajusts?
end

When('estiver na tela de partidas') do
  @screen.first_match
end

Then('devo visualizar os jogos que irão ser transmitidos no dia') do
  @screen.matchers_day
end

When('eu selecionar uma partida') do
  @screen.select_first_match
end

Then('deve ser apresentado a informação da partida') do
  @screen.status_match
end