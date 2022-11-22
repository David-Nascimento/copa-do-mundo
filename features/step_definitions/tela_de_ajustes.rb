Given('que eu quero acessar a area de perfil') do
  find_element(xpath: "//android.view.View[@content-desc='Ajustes Tab 4 of 4' or contains(@content-desc, 'Ajustes')]").displayed?
end

When('eu clicar no botao de Ajustes') do
  find_element(xpath: "//android.view.View[@content-desc='Ajustes Tab 4 of 4' or contains(@content-desc, 'Ajustes')]").click
end

Then('deve ser apresentado o menu para o perfil') do
  find_element(xpath: "//android.view.View[@content-desc='Perfil Dados do usuário' or contains(@content-desc, 'Perfil')]").click
end

Given('que eu quero ir para a tela de notificacoes') do

end

Then('deve ser apresentado o menu para a tela de notificacoes') do

end