import 'package:flutter/material.dart';
import 'package:permission_toggle_button/my_flutter_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Permission Toggle Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Permission Toggle Example')),
        body: Center(
          child: PermissionToggle(
            key: const ValueKey('permission_toggle'), // Named key parameter
            icon: Icons.location_on,
            value: true,
            title: 'Location Access',
            subTitle: 'Allow this app to access your location',
            activeColor: Colors.green,
            activeTrackColor: Colors.lightGreen,
            onChanged: (bool newValue) {
              // Handle the change
              if (newValue) {
              } else {
              }
            },
          ),
        ),
      ),
    );
  }
}
