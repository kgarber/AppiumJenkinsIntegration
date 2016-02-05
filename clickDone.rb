def clickDone()
while exists {button("Done")} == false
@driver.swipe(:start_x => 0, :start_y =>1000, :end_x => 0, :end_y => 50, :duration =>2000)
#puts exists {button("Done")}
end
@driver.find_element(:uiautomator, "new UiSelector().className(\"android.widget.Button\")").click()
@driver.find_element(:uiautomator, "new UiSelector().resourceId(\"android:id/action_bar_title\")").click()
end
#That was just jibberish23333331232133332323
def syncDevice()
	@driver.find_element(:uiautomator, "new UiSelector().resourceId(\"com.zerion.apps.iform.appium:id/activity_form_list_action_sync\")").click()
@driver.manage.timeouts.implicit_wait = 60
	@driver.find_element(:uiautomator, "new UiSelector().resourceId(\"android:id/button1\").text(\"OK\")").click();




end

