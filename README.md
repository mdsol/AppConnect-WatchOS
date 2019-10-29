# Watch-package

git submodule add https://github.com/mdsol/AppConnect-WatchOS.git

Right click on your target group.  Press `Add files to [Target Group]`
Highlight all files and folders in AppConnect-WatchOS.  

Under `Add to targets` check the box to select your targeted WatchOS extension app.  


We don't need xcode to automatically configure a bridging header, althgouh there will be no harm if you accidentily add one.  

Navigate to the `Build Settings` for your target app.  Click `Objetive-c Bridging Header` under `Swift Compiler - General` . 
Drag `s3-header.h` into the entry field.  You should see the contents of the field automatically filled out.  Verify that it is correct. 

While still under `Build Settings`,  navigate to `Search Paths`.  Select `Header Search Paths`.  Drag `aws-sdk-ios` into the entry field.  Select `recursive` on the right hand side. 

Naviate to `Compile Sources` Under `Build Phases`.  Click the add button (lower left `+`).  
Select `Add Other` (lower left). 
In the file selector, navigate to `AppConnect-WatchOS` folder. Highlight all files. Press `Open`
Under `Choose options for adding these files`, confirm the `Copy items if needed` option is checked. 
Under `Added folders`, confirm `Create folder references` is selected. 

