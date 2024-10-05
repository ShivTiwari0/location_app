# Location App

A Flutter-based mobile application that uses Google Maps SDK to display maps and show user locations.

## Features

- Display Google Maps with user location.
- Fetch weather information based on user location.
- Integrated with Google Maps SDK for Android.
- Supports real-time location updates.
- Fetch location details such as latitude and longitude.


![App Screenshot 1](assets/screenshotLoc1.png) ![App Screenshot 2](assets/screenshotLoc2.png)

## Setup and Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/ShivTiwari0/location_app.git
   cd location_app

2. **Install dependencies**
  
  flutter pub get

3. **Google Maps API Key**
 * Obtain your Google Maps API key from the Google Cloud Console.
 * Enable the "Maps SDK for Android" in your project.
 * Add your API key in android/app/src/main/AndroidManifest.xml:

<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY_HERE"/>

4. **Run the app**
  flutter run

5. **Permissions**
The app requests the following permissions:

* INTERNET: To fetch map data and location information.
* ACCESS_FINE_LOCATION: For precise user location.
* ACCESS_COARSE_LOCATION: For approximate user location.

lib/
│
├── model/                 # Data models for weather and location
├── repositories/          # Repositories to handle API calls
├── view/                  # UI components and screens
│   └── widget/            # Reusable widgets
├── viewmodel/             # ViewModel for state management using Provider
└── main.dart              # Main entry point of the app

6. **API Usage**
* Google Maps API: The app uses Google Maps SDK to render the map and get location details.