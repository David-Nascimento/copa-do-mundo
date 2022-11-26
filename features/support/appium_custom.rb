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

def click_element(el)
  find(el).click
end

def element_enables?(el)
  find(el).enabled?
end

def element_displayed?(el)
  find(el).displayed?
end

def implicit_wait timeSeconds
  $driver.manage.timeouts.implicit_wait = timeSeconds
end

def swipe_orientation_element(elFrom, elTo, orientation, maxSwipes = 5)
  screen = $driver.window_size
  posElFrom = find(elFrom).location

  startX = (screen.width / 5 * 4).abs
  endX = (screen.width / 2).abs

  startY = (screen.height / 5 * 4).abs
  endY = (screen.height / 2).abs

  implicit_wait 0

  swipes = 0
  while ((!element_exists? elTo) || (!find(elTo).displayed? )) && (swipes <= maxSwipes)
    case orientation
    when "left"
      Appium::TouchAction.new.swipe(start_x: startX, start_y: posElFrom.y + 20, end_x: endX, end_y: posElFrom.y + 20, duration: 500).perform
    when "right"
      Appium::TouchAction.new.swipe(start_x: endX, start_y: posElFrom.y + 20, end_x: startX, end_y: posElFrom.y + 20, duration: 500).perform
    when "up"
      Appium::TouchAction.new.swipe(start_x: posElFrom.x + 20, start_y: startY, end_x: posElFrom.x + 20, end_y: endY, duration: 500).perform
    when "down"
      Appium::TouchAction.new.swipe(start_x: posElFrom.x + 20, start_y: endY, end_x: posElFrom.x + 20, end_y: startY, duration: 500).perform
    end
    swipes += 1
  end
end