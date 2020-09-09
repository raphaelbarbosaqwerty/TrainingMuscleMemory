# Ionic
Chill &amp; Study

# Arch-Linux config
PATH:  
/etc/profile  
/etc/bash.bashrc  
  export PATH="$PATH:/$HOME/Android/Sdk/tools"  
  export PATH="$PATH:/$HOME/Android/Sdk/tools/bin"  
  alias emulator="/$HOME/Android/Sdk/tools/emulator"  
  
-----------------------------------

# Ionic Commands  
New:  
  ionic start [projectName] blank [blankPage]  
  ionic serve // Starting server  
  ionic build // Checke errors  
  **ionic cordova run android -lc --target=[NAME] // with Log**  
  **ionic cordova build android // Build an Apk**  

Devices check:  
  cordova run android  --list // Show devices  
  ionic cordova emulate android --device emulated_device  
  cordova build [emulatorName] // Build new emulator  
  
-----------------------------------

# Android-Studio && fix bugs  
List:  
  sdkmanager --licenses // Accept licenses  
  emulator -list-avds // List emulators  
  emulator @name-of-your-emulator // Start emulator  
  
QT bugs with libs, solution:  
https://stackoverflow.com/questions/42554337/cannot-launch-avd-in-emulatorqt-library-not-found  

-----------------------------------

# NPM & libraries  
Start node.js:
  npm -g install ionic@4.8.0 cordova //Installing  
  npm init // Start  
  npm install [package] --global // Global var like Ionic  
  npm install [librarie] --save // For the group  
  npm install [librarie] --save-dev // Just for the dev  
  npm install // Inside the folder with package.json  
  npm uninstall librarie --save // Remove librarie and save  

-----------------------------------

# SQLite fix Bugs  
Start:  
  ionic cordova plugin add cordova-sqlite-storage  
  npm install --save @ionic-native/sqlite  
  
**Fix the bug for SQLite 5.0:**  
  app.module.ts | import { SQLite } from '@ionic-native/sqlite/ngx'; // Need to use "package/ngx"  
Refs for this bug:  
https://stackoverflow.com/questions/54396072/type-sqliteoriginal-is-not-assignable-to-type-provider  
https://ionicframework.com/docs/native  
  
Or:**Dowgrade SQLite for 4.8**  
  ionic cordova plugin remove cordova-sqlite-storage  
  npm uninstall --save @ionic-native/sqlite  
  
  1 - ionic cordova plugin add cordova-sqlite-storage@2.5  
  2 - npm install @ionic-native/sqlite@4.8  

-----------------------------------

# Emulator error's  
ExecuteSql:  
  Normal bug, just ignore.  
![alt text](https://i.imgur.com/5DsGSW1.png)


Uncaught (in promise):  
  Check the library for the correct version of Ionic  
  
GPS:  
  Just run the emulator without -lc  
  "ionic cordova run android".  
![alt text](https://i.imgur.com/0lGOlKQ.png)

-----------------------------------  
# SmartMoney app  
Screen's  
![alt text](https://i.imgur.com/OShEp41.png)
![alt text](https://i.imgur.com/RCOVa5M.png)
![alt text](https://i.imgur.com/NyHcswN.png)
![alt text](https://i.imgur.com/AbdCacM.png)
