// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:untitled/main.dart';
import 'package:untitled/Screens/google_map_screen.dart';
import 'package:untitled/Screens/location_details.dart';

void main() {
  testWidgets('Widget test main screen', (WidgetTester tester) async {
    // test main screen
    await tester.pumpWidget(const MyApp());

    //test "Google Map Demo" text
    expect(find.text("Google Map Demo"), findsOneWidget);

    //test "Press button in lower right corner to access the Map" text
    expect(find.text("Press button in lower right corner to access the Map"), findsOneWidget);
  });

  testWidgets('Widget test google maps screen', (WidgetTester tester) async {
    //test google map screen
    await tester.pumpWidget(MaterialApp(home: GoogleMapScreen()));
    await tester.pumpAndSettle();

    //check if Google Map is there
    expect(find.byType(GoogleMap), findsOneWidget);
  });
}
