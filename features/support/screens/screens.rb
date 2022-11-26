class Screens
  def initialize
    get_screen_mappings "elements.yaml"
  end

  def is_ajusts?
    element_exists? @mappings["botao_ajustes"]
  end

  def first_match
    element_exists? @mappings["primeira_partida"]
  end

  def select_first_match
    element_exists? @mappings["primeira_partida"]
    click_element @mappings["primeira_partida"]
  end

  def matchers_day
    element_exists? @mappings["primeira_partida"]
    swipe_orientation_element @mappings["primeira_partida"], @mappings["ultima_partida"], "up"
  end

  def status_match
    element_exists? @mappings["lances_partida"]
    swipe_orientation_element @mappings["lances_partida"], @mappings["inicio_do_jogo"], "up"
  end


end