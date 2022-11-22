Before do
  $driver.start_driver
  $implicitWait = 30
end

at_exit do
  $driver.driver_quit
end

