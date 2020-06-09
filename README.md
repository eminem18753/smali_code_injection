1.The code for extracting imei, geolocation, and advertising id is in "meta_information" folder.
2.The code for smali code injection is in "smali_code_injection" folder.
3.The difference for the original and the injectedCode "InjectedCode/Main.smali" file is stored in "InjectedCode/Main.diff".
4.The difference for the original and the injectedCode "InjectedCode/AdRequest.smali" file is stored in "InjectedCode/AdRequest.diff".
5.The smali file I created for getting AdId is in "InjectedCode/AdIdTask.smali", it is used in "InjectedCode/Main.smali".
6.The apk for extracting meta_information is "meta_information.apk".
7.The apk for original android app is "android_app_original.apk"
8.The apk for repackaged android app is "android_app_repackaged.apk"
9.The first and the third line in "meta_information_test.txt" is the geolocation of the user.
10.The second line in "meta_information_test.txt" is the IMEI of the user (Because I use emulator, so the IMEI is 000000000000000, I've checked it).
11.The fourth line in "meta_information_test.txt" is the advertising_id of the user.
12.For the file contents in "smali_code_injection.txt", I've extracted the logs obtained through "$adb logcat". I've picked the contents that are related to checkpoint 2 and put them in "smali_code_injection.txt".