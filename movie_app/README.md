# 🎬 Flutter Movie App (TheMovieDB API Integration)

This Flutter application is built to display movies using **TheMovieDB API**. The app fetches data from the TMDB API and presents a clean, responsive UI for exploring movies, posters, and details.

---

## 🚀 Features

- Fetches and displays popular movies from TMDB
- Movie posters, titles, and basic details
- Detailed movie information on tap
- Responsive and clean UI using Flutter widgets
- Organized project structure for easy scalability

---

## 🔐 API Configuration

The app uses **TheMovieDB (TMDB)** REST API. The configuration constants are stored separately in a `constants.dart` file for better maintainability.

```
const String apiKey = '';
const String baseUrl = 'https://api.themoviedb.org/3';
const String imageUrl = 'https://image.tmdb.org/t/p/w500';
```

## 🔗 Example Endpoint

To fetch popular movies:
```
GET https://api.themoviedb.org/3/movie/popular?api_key=YOUR_API_KEY
```

## 📸 Screenshots
![App front page](https://raw.githubusercontent.com/vikashbaria/flutter-projects/refs/heads/main/movie_app/App%20front%20page.JPG)

## 📦 Download APK

You can try the app by downloading the APK from the link below:

👉 [Download app-debug.apk](https://github.com/vikashbaria/flutter-projects/raw/refs/heads/main/movie_app/app-debug.apk)

> **Note:** If you're cloning the project, make sure to run the app on an emulator or physical device using Flutter CLI.


## 📁 Project Structure

The app is organized into the following main folders:
```
lib/
├── models/      → All data models for parsing API responses
├── screens/     → UI screens of the app (e.g., HomeScreen, DetailScreen)
├── service/     → API service layer for fetching data from TMDB
├── widgets/     → Reusable custom widgets (e.g., MovieCard, RatingStar)
├── constants.dart → API keys and base URLs
```
## ✅ Example:

`models/movie_model.dart` → Represents movie data structure.

`screens/home_screen.dart` → Displays list of popular movies.

`service/api_service.dart` → Handles API requests and parsing.

`widgets/movie_card.dart` → Custom widget for displaying a single movie item.

## 🛠️ Getting Started
Prerequisites:
Flutter SDK

A valid TMDB API key (replace with your own if needed)

## How to Run:
```
flutter pub get
flutter run
```



## 📌 Notes
 - This app is for educational/demonstration purposes.
 - Do not expose your TMDB API key in public repositories.
 - Make sure to handle API limits and errors in production-ready apps.

## 📧 Contact
	For any queries or suggestions, feel free to reach out at [vikashbaria4@gmail.com].




