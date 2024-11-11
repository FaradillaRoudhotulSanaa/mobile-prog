import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreen(); 
}

class _LocationScreen extends State<LocationScreen> {
  String myPosition = '';
  @override
  void initState() {
    super.initState();
    // getPosition().then((Position myPos) {
    //   myPosition = 
    //   'Latitude: ${myPos.latitude.toString()} - Longitude:{myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    // final myWidget =
    //   myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
    // ;

    return Scaffold(
      appBar: AppBar(title: const Text('Current Location Faradilla')),
      body: Center(child: FutureBuilder(
        future: position, 
        builder: (BuildContext context, AsyncSnapshot<Position>snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Something terrible happened');
            }
            return Text(snapshot.data.toString());
          } else {
            return const Text('');
          }
        },
        )
      ),
    );
  }

  Future<Position> getPosition() async {
    // await Geolocator.requestPermission();
    // await Geolocator.isLocationServiceEnabled();
    // Position? position = 
    //   await Geolocator. getCurrentPosition();
    // return position; 

    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator. getCurrentPosition();
    return position;
  }

  Future<Position>? position;

}