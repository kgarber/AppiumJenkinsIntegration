def typeElement(findText,sendingText)
# This is a workaround for Appium issue 4311, 
# It can and should be replaced by the following when the issue is resolved
# appium.driver.scroll_to text
#text = %Q("#{text}")
#args = appium.scroll_uiselector("new UiSelector().text(#{text})")
#appium.driver.find_element :uiautomator, args
while exists {text(findText)} == false
@driver.swipe(:start_x => 0, :start_y =>1000, :end_x => 0, :end_y => 50, :duration =>2000)
end

@driver.find_element(:name, findText).click()
@driver.find_element(:uiautomator, "new UiSelector().className(\"android.widget.EditText\")").send_keys sendingText
@driver.find_element(:uiautomator, "new UiSelector().resourceId(\"com.zerion.apps.iform.appium:id/activity_element_editor_action_done\")").click()

end

def swipeElement(findText)
	#@driver.extend Selenium::WebDriver::DriverExtensions::HasTouchScreen
# This is a workaround for Appium issue 4311, 
# It can and should be replaced by the following when the issue is resolved
# appium.driver.scroll_to text
#text = %Q("#{text}")
#args = appium.scroll_uiselector("new UiSelector().text(#{text})")
#appium.driver.find_element :uiautomator, args
while exists {text(findText)} == false
@driver.swipe(:start_x => 0, :start_y =>1000, :end_x => 0, :end_y => 50, :duration =>2000)
puts exists {text(findText)}
end
pages = @driver.find_element(:id,"com.zerion.apps.iform.appium:id/element_seekbar")
puts "Find something here"
@driver.touch.flick(pages,-100,0,:normal).perform

end

def pickElement(findText,pickOption)
while exists {text(findText)} == false # && exists {text(pickOption)} == false
@driver.swipe(:start_x => 0, :start_y =>1000, :end_x => 0, :end_y => 50, :duration =>2000)
puts exists {text(findText)}
end
@driver.find_element(:name, pickOption).click()
end