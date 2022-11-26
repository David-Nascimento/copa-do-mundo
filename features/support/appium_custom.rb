# frozen_string_literal: true
def element_exists?(el)
  finds(el).count > 0
end

def finds(el)
  $driver.find_elements(el['tipo_busca'], el['value'])
end

def find(el)
  $driver.find_element(el['tipo_busca'], el['value'])
end