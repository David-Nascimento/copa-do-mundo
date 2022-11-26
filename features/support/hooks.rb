Before do
  $driver.start_driver
end


Before do |scenario|
  @scenario_name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
end

AfterStep do
  screenshot
end

at_exit do
  $driver.driver_quit
end

