import 'package:flutter/material.dart';
import 'package:permission_toggle_button/my_flutter_package.dart';
// import 'package:permission_toggle_button/permission_toggle_button.dart';
// import 'package:permissions_with_button/my_flutter_package.dart'; // Import your package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Permission Widgets Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PermissionToggle(
              title: 'Camera Access',
              subTitle: 'Allow the app to access your camera',
              value: true,
              icon: Icons.camera_alt,
              onChanged: (bool value) {
                print('Camera access toggled: $value');
              },
            ),
            SizedBox(height: 20),
            PermissionToggleButton(
              title: 'Location Access',
              subTitle: 'Allow the app to access your location',
              value: false,
              icon: Icons.location_on,
              onChanged: (bool value) {
                print('Location access toggled: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
