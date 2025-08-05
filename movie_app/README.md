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

## 📸 Screenshots




