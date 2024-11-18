import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Contoh data cuaca
  String cityName = "Jakarta";
  double temperature = 30.5;
  int humidity = 70;
  double windSpeed = 5.0;

  void _refreshWeatherData() {
    // Fungsi ini bisa dipakai untuk mengambil data cuaca baru dari API
    setState(() {
      // Update data cuaca di sini (misalnya melalui API call)
      temperature += 1; // Contoh: menambahkan suhu untuk simulasi refresh
      windSpeed += 0.5; // Contoh: mengubah kecepatan angin
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFA8BFF),
              Color(0xff2BD2FF),
              Color(0xff2BFF88),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              cityName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "${temperature.toStringAsFixed(1)}°C",
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Humidity: $humidity%",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Wind Speed: ${windSpeed.toStringAsFixed(1)} m/s",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _refreshWeatherData,
              icon: const Icon(Icons.refresh),
              label: const Text("Refresh Data"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 5,
              color: Colors.white.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.thermostat_outlined, color: Colors.orange, size: 30),
                        const SizedBox(height: 8),
                        const Text(
                          "Temperature",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${temperature.toStringAsFixed(1)}°C",
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.water_drop, color: Colors.blue, size: 30),
                        const SizedBox(height: 8),
                        const Text(
                          "Humidity",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "$humidity%",
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.air, color: Colors.green, size: 30),
                        const SizedBox(height: 8),
                        const Text(
                          "Wind Speed",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${windSpeed.toStringAsFixed(1)} m/s",
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
