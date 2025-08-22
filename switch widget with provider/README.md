# 🌗 Flutter Theme Toggle with Provider

This project demonstrates how to use **Provider** state management in Flutter to toggle between **Light and Dark themes** dynamically.  

---

## 🚀 Features
- ✅ Switch between **Light Theme** and **Dark Theme**  
- ✅ Implemented using **Provider** for state management  
- ✅ `Consumer` widget ensures only the necessary widgets rebuild  
- ✅ Simple and clean Flutter app for beginners  

---

## 📂 Project Structure
```
lib/
└── main.dart 
```

---

## 🔑 Key Concepts

### 1. **Provider Class (`SwitchProvider`)**
- Holds the theme state (`isDark`)
- Notifies listeners when the theme changes
- Exposes the current `ThemeData`

### 2. **ChangeNotifierProvider**
- Provides `SwitchProvider` instance to the widget tree

### 3. **Consumer**
- Listens for changes in `SwitchProvider`
- Rebuilds only the required widgets (optimized UI updates)

---

## 📝 How It Works
1. User toggles the **Switch** widget  
2. `SwitchProvider.toggleTheme()` updates the `_isDark` state  
3. `notifyListeners()` rebuilds the `MaterialApp` with the updated theme  
4. UI switches between **Light Mode** 🌞 and **Dark Mode** 🌙 instantly  

---

## ▶️ Run the App

### 1. Clone the repo or copy the code  
```bash
git clone https://github.com/your-username/flutter-theme-toggle.git
cd flutter-theme-toggle
```

### 2. Ensure Flutter is installed
```
flutter --version
```
### 3. Run the app
```
flutter run
```

---
📸 Demo

Light Mode 🌞
Dark Mode 🌙