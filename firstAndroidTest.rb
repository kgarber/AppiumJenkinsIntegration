def firstAndroidTest()
scroll_to_find("First Auto Android")
#textElement("Text Element 1","Texting 1")
#textElement("Text Element 2","Texting 2")
#textElement("Text Element 3","Texting 3")
#picklistElement("Picklist Element 1", "Option 1")
#picklistElement("Picklist Element 2", "Option 2")
#picklistElement("Picklist Element 3", "Option 3")
selectElement("Select Element 1", "Option 4")
selectElement("Select Element 2", "Yes")
selectElement("Select Element 3", "5")
pageLayout = Hash.from_xml(@driver.page_source()).to_json
jsonPage = JSON.parse(pageLayout)
puts jsonPage["hierarchy"]["android.widget.FrameLayout"]["android.view.View"]["android.widget.FrameLayout"][1]["android.widget.RelativeLayout"]["android.widget.ListView"]["android.widget.RelativeLayout"]

clickDone()
syncDevice()
end