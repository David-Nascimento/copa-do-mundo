class AjustesScreen

  def wait(obj)
    wait_true { exists { find_element(xpath: "#{obj}") } }
  end

  def partida_screen
    partidas =   "//android.widget.ImageView[@content-desc='Partidas Tab 3 of 4' or contains(@content-desc, 'Partidas')]"
    wait(partidas)
  end

  def ajustes_screen
    ajustes = "//android.view.View[@content-desc='Ajustes Tab 4 of 4' or contains(@content-desc, 'Ajustes')]"
    wait(ajustes)
    find_element(xpath: ajustes).click
  end

  def perfil_screen
    perfil = "//android.view.View[@content-desc='Perfil Dados do usuário' or contains(@content-desc, 'Perfil')]"
    wait(perfil)
    find_element(xpath: perfil).click
  end

  def login_screen
    screen_perfil = "//android.view.View[@content-desc='Perfil']"
    find_element(xpath: screen_perfil).displayed?
    botao_entrar = "//android.widget.Button[@content-desc='Entrar']"
    find_element(xpath: botao_entrar).enabled? == true
  end

end