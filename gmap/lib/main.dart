import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google MAP API',
      home: GoogleMapExample(),
    );
  }
}

class GoogleMapExample extends StatefulWidget {
  @override
  _GoogleMapExampleState createState() => _GoogleMapExampleState();
}

class _GoogleMapExampleState extends State<GoogleMapExample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(24.8607, 67.0011); // Karachi coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Google Map Demo By Vikash',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: _center, zoom: 12.0),
        markers: {
          Marker(
            markerId: MarkerId("karachi_marker"),
            position: _center,
            infoWindow: InfoWindow(title: "Karachi"),
          ),
        },
      ),
    );
  }
}
