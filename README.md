# Flutter Weather Application

A comprehensive weather application built with Flutter for both iOS and Android platforms.


![weather](https://github.com/NoaTubic/weather_app/assets/62752909/b413af71-e5a8-4867-b04d-0da3d7a8903b)


## Features

- **Weather Display**: Shows the weather for the current location.
- **Detailed Forecast**: Provides hourly weather details for today and tomorrow.
- **Weather Charts**: Visual representation of weather conditions such as sunny, rain, or showers.
- **Search**: Allows users to search for the weather forecast by city or location name with real-time suggestions as they type.


## Architecture & Libraries

- **Clean Architecture**: The app follows Uncle Bob's Clean Architecture principles.
- **State Management**: Uses the BLoC pattern for state management.
- **Location Tracking**: Implemented with the `geolocator` package.
- **Local Caching**: Uses the `Hive` database for caching data locally.
- **Navigation**: Navigation is handled by the `auto_route` package.
- **API Integration**: The app integrates with the WeatherAPI using `dio`, `freezed`, and `retrofit`.

## Testing

- **Unit Tests**: The application includes unit tests to ensure functionality.
- **Test Coverage**: High test coverage has been maintained throughout the application.

## Requirements

- **Flutter Version**: The app is built using Flutter version 2.10.2.

## 🚀 Getting Started

1. Clone the repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Add your Weather API key to the api_constants.dart file.
5. Run `flutter run` to start the application.
