import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_giver_app/main.dart';

void main() {
  testWidgets('Splash screen is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the splash screen is displayed with the app name
    expect(find.text('Caregiver Hub'), findsOneWidget);
    expect(find.text('Empowering Caregivers with Smart Tools'), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}
