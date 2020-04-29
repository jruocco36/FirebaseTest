## Add Firebase to flutter project

Project root > build.gradle
```
dependencies {
        ...
        classpath 'com.google.gms:google-services:4.3.3'
    }
```

android > app > build.gradle
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
  firebase_analytics: ^5.0.11
  firebase_core: ^0.4.4+3
  cloud_firestore: ^0.13.5
  firebase_auth: ^0.16.0
```

https://console.firebase.google.com/  
- Add project
  - ApplicationId must match build.gradle
