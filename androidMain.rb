require "test/unit"
require "rubygems"
gem "selenium-client"
require "appium_lib"
gem "appium_lib"

#gem "selenium-webdriver", "~> 2.37.0"33
#gem "rspec", "=2.14.1" 
require "selenium/client"
require "selenium-webdriver"
require "time"
require "highline/import"
require "rexml/document"	 	
require 'active_support/all'
#require "mongo" asdasdsdaffff
require 'net/http'
require 'shoulda'
require 'Mail'
require 'json'
require 'rexml/document'
require 'rspec'
require './checkingElement'
require './scrolltos'
require './typingElement'
require './clickDone'
require './firstAndroidTest'

capabilities = {
  'appium-version'=> '1.0',
  'platformName'=> 'Android',
  'platformVersion'=> '4.4.4',
  "deviceName"=> "android-206290d2a09393c7",
  "app"=> "/Users/zerionsoftware/Desktop/appium_5_7_0_20.apk",
  "fullReset"=> false,
  "appPackage"=> "com.zerion.apps.iform.appium",
  "appActivity"=> "com.zerion.apps.iform.core.activities.SplashActivity",
  "noReset"=> true
}

#["hierarchy"]["android.widget.FrameLayout"]["android.view.View"]["android.widget.FrameLayout"]["android.widget.RelativeLayout"]["android.widget.Listview"]["android.widget.RelativeLayout"]
server_url = "http://0.0.0.0:4723/wd/hub"

@driver = Appium::Driver.new(caps: capabilities).start_driver
Appium.promote_appium_methods Object
sleep(3)

firstAndroidTest()
#@driver.manage().timeouts().implicitly_wait(60, TimeUnit.SECONDS);

#@driver.swipe(:start_x => 0, :start_y =>1000, :end_x => 0, :end_y => 50, :duration =>2000)
#puts exists {text("Select_Widget Test")}
#scroll_to_find("All Widgets Enhanced")
#swipeElement("Range Element")
#pickElement("Select Widget123","blah")
#sleep(2)
#puts exists {text("Longer Options")}
#typeElement("My Element4","ahoyaoaoa")
#typeElement("My Element5","1233")
#clickDone()
#syncDevice()

#puts "did it scroll?"
sleep(5)
#exists {text("Socket Demo")} ? puts("true") : puts("false")
#@driver.scroll_to "Fol 51"
#@driver.scroll_to("All Widgets Enhanced")
#@driver.scroll_to("License - Mississippi")
#exists {text("Fol 51")} ? puts("true") : puts("false")
#@driver.find_element(:name, "Filter Option List").click()
#sleep(2)
#pageLayout = Hash.from_xml(@driver.page_source()).to_json
#checkElement(pageLayout,"First Name")
#checkElement(pageLayout,"Email Address")
#puts "\n\n\n\n\n\n" + Hash.from_xml(@driver.page_source()).to_json
#pageLayout = JSON.parse(Hash.from_xml(@driver.page_source()).to_json)
#puts pageLayout["hierarchy"]["android.widget.FrameLayout"]["android.view.View"]# => ["android.widget.FrameLayout"]["android.widget.RelativeLayout"]["android.widget.Listview"]["android.widget.RelativeLayout"].find {|h1| h1['text']=='First Name'}['bounds']
#@driver.scroll_to("Default Number")
#@driver.find_element(:name, "Default Number	").click()
#puts @driver.page_source()
#@driver.find_element(:uiautomator, "new UiSelector().text(\"License - Mississippi\")").click
#       find_element(:uiautomator, 'new UiSelector().text("Animation")')
