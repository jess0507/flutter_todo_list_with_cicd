# flutter_todo_list_with_cicd

## Tech Stack
- DB: sqflite
    - 目前看沒辦法存boolean值, 需先將物件的boolean屬性轉成integer存進db
- MVVM
- Clean code
- GoRouter
- Riverpod

## Build the project
- fvm flutter pub get
- fvm flutter pub run build_runner build --delete-conflicting-outputs

## Run the project
- fvm flutter pub run