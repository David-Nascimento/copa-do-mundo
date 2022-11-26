class AjustesScreen
  def initialize
    get_screen_mappings "elements.yaml"
  end

  def is_ajusts?
    element_exists? @mappings["btnAjustes"]
  end

end