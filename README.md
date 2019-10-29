# Watch-package

In your project directory run the command `git submodule add https://github.com/mdsol/AppConnect-WatchOS.git`

Right click on your target group.  Press `Add files to [Target Group]`
Highlight all files and folders in AppConnect-WatchOS.

Under `Add to targets` check the box to select your targeted WatchOS extension app.


We don't need xcode to automatically configure a bridging header, althgouh there will be no harm if you accidentily add one.

Navigate to the `Build Settings` for your target app.  Click `Objetive-c Bridging Header` under `Swift Compiler - General` .
Drag `s3-header.h` into the entry field.  You should see the contents of the field automatically filled out.  Verify that it is correct.

While still under `Build Settings`,  navigate to `Search Paths`.  Select `Header Search Paths`.  Drag `aws-sdk-ios` into the entry field.  Select `recursive` on the right hand side.

Run the app to confirm all required classes compile.

In case of errors, ensure your compile sources are correct!  Verify they include all aws files.


To initiate an upload to the medidata cloud use the following code sample.

        let contentString = "Todd Landman, nevertheless, draws our attention to the fact that democracy and human rights are two different concepts and that there must be greater specificity in the conceptualisation and operationalization of democracy and human rights"

        let stringData = contentString.data(using: .utf8)!

        let filename = "client_test_file.txt" # must follow s3 naming conventions

        EproEndpoint.executeIngestionRequest(medistranoStage: MedistranoStage.production, user: "njacobseprotest@mdsol.com", password: "Password1", subjectUuid: "309f0c35-a464-450f-b3fd-2d9c3037041b", data: stringData, filename: filename)

