# Flutter Login App
## About the app!
The application might seems simple, but it implements the hardest topic in Flutter which's BLOC structure, which mainly sebarates
data in each Page/Screen, to ensure the expandability of the App and being able to handle Big-Sized Flutter applications !
### BLOC Structure
The app uses BLOC structure which mainly focuses on captuaring the I/O events that happens during the login in darts' streams,
but since the total output operation need to combine the result of the multiple stream, RXdart library's turn starts.
### rxDart
Reactive programming with rx library to be able to combine the result of all the input streams and be able to proceed with the login submit.
