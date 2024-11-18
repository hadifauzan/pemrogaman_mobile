import 'package:geolocator/geolocator.dart';

class LocationService {
  // Fungsi untuk meminta izin lokasi dan mendapatkan posisi perangkat
  Future<Position?> getCurrentLocation() async {
    // Periksa apakah layanan lokasi diaktifkan
    bool serviceEnabled;
    LocationPermission permission;

    // Periksa jika layanan lokasi diaktifkan
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled.');
      return null;
    }

    // Memeriksa status izin lokasi
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied.');
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print('Location permissions are permanently denied.');
      return null;
    }

    // Mendapatkan lokasi perangkat (latitude dan longitude)
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}
