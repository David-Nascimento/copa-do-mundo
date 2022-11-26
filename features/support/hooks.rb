Before do
  $driver.start_driver
end


Before do |scenario|
  @scenario_name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
end

AfterStep do |result, step|
  screenshot step.text
  expect(result).to be_a(Cucumber::Core::Test::Result::Passed)
end

at_exit do
  $driver.driver_quit
end

