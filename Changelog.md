# AppConnect - WatchOS

## Changelog

### 1.0.0
- Initial release

### 1.1.0
- Fixed memory leak by adding new protocol for handling upload completion
- Limited names of characters in uploaded file

### 1.1.1
- Fixed bug in AWS S3 Transfer Utility configuration

### 1.1.2
- Improve error handling for AWS S3 uploads
- If network is inaccessable for 30 continuous seconds then the upload will fire the completion handler with errors
