Before do
  $driver.start_driver
  $implicitWait = 30

  #inicia Paginas
  @ajustes = AjustesScreen.new
end

at_exit do
  $driver.driver_quit
end

