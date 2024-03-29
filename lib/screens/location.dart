import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location {
  double latitude;
  double longtude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longtude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
