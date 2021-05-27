# **React Native**

### **Physical Pixels**
```
Physical Pixels = DIPs x Scale Factor  (density-independent-pixels) (if scale-factor = 2 then every every points contain 2 pixels in device)(Dimensions.get("screen")) 
```

### **Device Properties**
```
npm i expo-constants  
//to see the device properties like name, status bar hight, type, real or not etc.
```

### **handle swipes or gestures**
```
(expo or npm) install react-native-gesture-handler //to handle swipes or gestures  https://docs.expo.io/versions/v39.0.0/sdk/gesture-handler/ 
```

### **Formik to Build Forms**
https://formik.org/
```
npm i formik@2.1.4
```
### **Validation with Formik use Yup 
```
npm i yup@0.28.5
```

## **Working with expo reac-native**
```
1- build android file
expo build:android

2- build ipa file
expo build:ios


## adb reverse tcp:8081 tcp:8081
3- Fetch keyStore file:
expo fetch:android:keystore

```
