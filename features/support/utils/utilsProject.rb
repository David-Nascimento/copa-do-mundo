def android?
  $platform == 'android'
end

def ios?
  $platform == 'ios'
end

def screenshot
  screenshot = $driver.screenshot("allure-results/#{$platform}/ss.png")
  Allure.add_attachment(name: "#{@scenario_name} ", source: screenshot, type: Allure::ContentType::PNG)
  File.delete("allure-results/#{$platform}/ss.png")
end

def platform_check
  raise 'Por favor defina a plataforma (android|ios)' if ENV['PLATFORM_NAME'].nil?

  if ENV['PLATFORM_NAME'].downcase == "android" || ENV['PLATFORM_NAME'].downcase == "ios"
    $platform = ENV['PLATFORM_NAME'].downcase
  else
    raise "Testes não suportados para esta plataforma #{ENV['PLATFORM_NAME'].downcase}}"
  end
end

def get_screen_mappings screen
  $platform = ENV['PLATFORM_NAME'].downcase
  screen_mappings = YAML.load_file "#{Dir.pwd}/features/data/#{screen}"
  @mappings = screen_mappings[$platform]
end


def shut_servers()
  if $where == 'local'
    system 'kill $(pgrep -f appium)'
  end
end

def start_servers()
  if $where == 'local'
    system 'appium --relaxed-security'
  end
end