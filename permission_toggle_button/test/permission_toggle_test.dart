import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permission_toggle_button/my_flutter_package.dart';

void main() {
  testWidgets('PermissionToggle has a title and subtitle', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PermissionToggle(
            title: 'Test Title',
            subTitle: 'Test Subtitle',
            value: false,
            icon: Icons.camera_alt,
            onChanged: (value) {},
          ),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('Test Subtitle'), findsOneWidget);
  });
}
