## Add Firebase to flutter project

App created from tutorial:  
https://www.youtube.com/watch?v=sfA3NWDBPZ4  
https://github.com/iamshaunjp/flutter-firebase  

Get latest dependency versions here:  
https://pub.dev/packages/firebase_core#-installing-tab-  
https://pub.dev/packages/cloud_firestore#-installing-tab-  
https://pub.dev/packages/firebase_auth#-installing-tab-  
https://pub.dev/packages/firebase_analytics#-installing-tab-  
https://pub.dev/packages/provider#-installing-tab-  

android/build.gradle
```
dependencies {
        ...
        classpath 'com.google.gms:google-services:4.3.3'
    }
```

android/app/build.gradle
```
apply plugin: 'com.google.gms.google-services'
...
defaultConfig {
        applicationId "com.project_name"  // must match name in Firebase project
        minSdkVersion 21
        ...
    }
```

pubspec.yaml
```
dependencies:
  ...
  firebase_core: ^0.4.4+3
  cloud_firestore: ^0.13.5
  firebase_auth: ^0.16.0
  firebase_analytics: ^5.0.11
  provider: ^4.0.5+1  # provider for state management
```

https://console.firebase.google.com/  
- Add project
  - Package name must match ApplicationId in android/app/build.gradle
- Download google-services.json and place in android/app folder

## Project overview

Authentication handled in services/auth.dart