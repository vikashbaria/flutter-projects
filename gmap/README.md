# 🗺️ Flutter Google Maps App - Karachi Marker

This Flutter project demonstrates integration of Google Maps using the `google_maps_flutter` plugin, with a custom marker placed on **Karachi, Pakistan**.

---

## 🗺️ App Screenshot

![Google Map Preview](https://raw.githubusercontent.com/vikashbaria/flutter-projects/main/gmap/Map%20Image.JPG)


## 📸 Features

- Google Maps Integration using native API key injection
- Custom Marker on a specific LatLng (Karachi)
- Clean and minimal Flutter implementation

---

## 🗂️ Project Structure

gmap/
├── lib/
│ └── main.dart # Main Flutter app with Google Map widget
├── android/
│ └── app/
│ └── src/
│ └── main/
│ └── AndroidManifest.xml # API key is stored here
├── pubspec.yaml # Flutter dependencies
└── README.md # You are reading it


## 🔐 Getting Your Google Maps API Key

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select an existing one.
3. Navigate to: APIs & Services → Credentials → Create Credentials → API Key
4. Copy the generated API key.
5. Enable the following APIs for your project:
- Maps SDK for Android
- Maps SDK for iOS (if needed)


## 🔧 API Key Setup (Required for Android)

### 👉 In `android/app/src/main/AndroidManifest.xml`

Replace this placeholder line:
<meta-data
 android:name="com.google.android.geo.API_KEY"
 android:value="YOUR_GOOGLE_MAPS_API_KEY_HERE"/>

with your actual API key:


<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="AIzaSyXXXXXX_Your_Key_Here"/>

📦 Dependencies
In pubspec.yaml, make sure you have:

dependencies:
  flutter:
    sdk: flutter
  google_maps_flutter: ^2.5.0
Then install packages by running:
flutter pub get


▶️ How to Run the Project
1. Clone the repo:
git clone https://github.com/vikashbaria/flutter-projects.git
cd flutter-projects/gmap
2. Add your API key in:
android/app/src/main/AndroidManifest.xml
3. Install dependencies:
flutter pub get
4. Run the app:
flutter run
🧪 Tested On
✅ Android Emulator (API 33)

✅ Physical Android Device

🛠️ iOS not tested (setup required)

🧾 Notes
This app is intended for learning and demo purposes.

Google Maps may charge after free tier limits - Pricing Info

You must keep your API keys secure.

👨‍💻 Author
Vikash Harjeewan
