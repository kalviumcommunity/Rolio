# Flutter Project Structure – Rolio

## Introduction

This document explains the folder structure of the Rolio Flutter project and the purpose of each automatically generated directory and file. Understanding this structure helps in organizing code properly and maintaining scalability as the project grows.

---

## Folder Explanation

### lib/
The core folder of the application.
Contains all Dart files including:
- main.dart (Entry point)
- screens/
- services/
- widgets/

This folder holds all UI and business logic.

---

### android/
Contains Android-specific configuration and Gradle build files.
Used when building APK or running the app on Android devices.

Key file:
android/app/build.gradle

---

### ios/
Contains iOS-specific configuration files.
Used by Xcode to build and deploy the app on iOS devices.

Key file:
ios/Runner/Info.plist

---

### assets/
Stores images, fonts, JSON files, and other static resources.
Declared inside pubspec.yaml.

---

### test/
Contains automated test files.
Default file:
widget_test.dart

Used for unit and widget testing.

---

### pubspec.yaml
The most important configuration file.

Used for:
- Managing dependencies
- Declaring assets
- Setting environment configuration

---

### Supporting Files

.gitignore – Prevents unnecessary files from being tracked in Git  
README.md – Project documentation  
build/ – Auto-generated compiled files  
.dart_tool/ – Dart internal configuration  
.idea/ – IDE configuration  

---

## Folder Hierarchy


Rolio/
├── android/
├── ios/
├── lib/
│ ├── screens/
│ ├── services/
│ └── main.dart
├── assets/
├── test/
├── pubspec.yaml
└── README.md


---

## Reflection

Understanding Flutter’s folder structure is important because:

- It ensures clean code organization.
- It improves scalability.
- It allows team members to collaborate efficiently.
- It separates UI, logic, and platform-specific configuration clearly.
- It supports Flutter’s cross-platform architecture (Android & iOS).
