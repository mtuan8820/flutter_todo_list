# To-do list

Simple To-do web application with Flutter

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
## General info
This project is a simple "to-do list" web application with 3 basic features:
* Ability to add tasks and delete them
* Edit task
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

## Usages
1. Create new task <br />
Click on the text field to start, type your task then press Enter
<video src='https://github.com/mtuan8820/flutter_todo_list/assets/114607104/a69d42cf-3910-4c00-a818-0b56bf03a255' width=50/>

2. Edit and delete task <br />
* You can click on Delete icon to delete task.
* You can click on Edit icon to start edit task and press Enter to finish.
* You can click on checkbox to mark your task completed or not.
<video src='https://github.com/mtuan8820/flutter_todo_list/assets/114607104/a69d42cf-3910-4c00-a818-0b56bf03a255' width=50/>

3. Reorder tasks
You can drag and drop to reorder the task
<video src='https://github.com/mtuan8820/flutter_todo_list/assets/114607104/6e46b4c8-c1c7-4800-bea9-d78fd9ee724e' width=50/>

4. Data persistence on refresh/restart
<video src='https://github.com/mtuan8820/flutter_todo_list/assets/114607104/fee91dae-aaf8-4929-84d0-f978d2123c0a' width=50/>

















