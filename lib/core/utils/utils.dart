import 'package:geolocator/geolocator.dart';

class Utils {
  static Future<void> getLocation({
    required Function(double, double) onSuccess,
    required Function(String) onError,
  }) async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        onError(
          "Location services are disabled. Please enable them in settings.",
        );
        return;
      }

      // Check and request permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        switch (permission) {
          case LocationPermission.denied:
            onError("Location permissions are denied. The app cannot proceed.");

            return;
          case LocationPermission.deniedForever:
            onError(
              "Location permissions are permanently denied. Please enable them in settings.",
            );

            return;
          default:
            return;
        }
      }

      // Permission granted, get the location
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      onSuccess(position.latitude, position.longitude);
    } catch (e) {
      print("An error occurred while fetching location: $e");
    }
  }
}
