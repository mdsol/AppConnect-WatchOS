# AppConnect - WatchOS

## Instructions to install the AppConnect SDK for WatchOS

### 1.  Download the SDK
 - In your project directory run the command `git submodule add https://github.com/mdsol/AppConnect-WatchOS.git`

### 2. Add source files
- In Xcode, right click on your target group.  Press `Add files to [Target Group]`
- Highlight all files and folders in AppConnect-WatchOS.
- Under `Add to targets` check the box to select your targeted WatchOS extension app.

*We don't need xcode to automatically configure a bridging header, although there will be no harm if you accidentily add one.*

### 3.  Configure files
- Navigate to the `Build Settings` for your target app.  Click `Objetive-c Bridging Header` under `Swift Compiler - General` .
- Drag `s3-header.h` into the entry field.  You should see the contents of the field automatically filled out.  Verify that it is correct.
- While still under `Build Settings`,  navigate to `Search Paths`.  Select `Header Search Paths`.  Drag `aws-sdk-ios` into the entry field.  Select the `recursive`  option on the right hand side.

### 4. Run app
- Run the app to confirm all required classes compile.

*In case of errors, ensure your compile sources are correct.  Verify they include all aws files.*

## Code Sample
- To upload sensor data to the Medidata cloud use the following code sample.

        let contentString = "Todd Landman, nevertheless, draws our attention to the fact that democracy and human rights are two different concepts and that there must be greater specificity in the conceptualisation and operationalization of democracy and human rights"

        let stringData = contentString.data(using: .utf8)!

        // filenames must be alpha numeric characters, as well as -_. (hyphen, underscore and period) in the filename.  No special charecters
        let filename = "test_file" // Files of the same name will be overwritten!  Use a unique filename to avoid collisions.

        class uploadHandler: mediUploadable {
            public func uploadCompleted(success: Bool, errorMessage: String, fileName: String) {
                if (success == true) {
                    print("\(fileName) uploaded successfully")
                }else{
                    print("\(fileName) upload failed due to \(errorMessage)")
                }
            }
        }

        // Send the data!
        EproEndpoint.executeIngestionRequest(medistranoStage: MedistranoStage.production, user: "eprotest@mdsol.com", password: "Password", subjectUuid: "309f0c35-a464-450f-b3fd-2d9c3037041b", data: stringData, filename: filename, mediUploadable: uploadHandler())

