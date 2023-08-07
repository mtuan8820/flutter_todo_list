# To-do list

Simple To-do web application with Flutter

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
## General info
This project is a simple "to-do list" web application with 3 basic features:
* Ability to add tasks and delete them
* Data persistence on refresh/restart
* Reorder tasks
## Technologies
Project is created with:
* Flutter version: 3.10.6
## Setup
1. Clone this project to your local computer
2. Update your Flutter to below version or later using this command `flutter upgrade`.
For more infomation, read https://docs.flutter.dev/release/upgrade
3. Config flutter for enable-web:true <br />
You should follow the guide in https://flutteragency.com/configure-flutter-enable-web-true/
4. This app uses localstorage so you need to install this package <br />
Add dependency to `pubspec.yaml` <br />
```
dependencies:
  ...
  localstorage: ^4.0.0+1
```
Run in your terminal <br />
```
flutter packages get
```

5. Finally, open your code editor, open terminal, `cd` to your local folder where you clone this project to, run this command <br />
```
flutter run -d chrome
```
If you got trouble, you can try `flutter doctor` in termnial and follow the instructions
