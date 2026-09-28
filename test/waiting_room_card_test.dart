import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waiting_room_app/waiting_room_card.dart';

void main() {
  testWidgets(
    'WaitingRoomCard displays the name and timestamp',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: WaitingRoomCard(name: 'Alice'),
        ),
      );

      expect(find.text('Hello,'), findsOneWidget);
      expect(find.text('Alice'), findsOneWidget);
      expect(find.textContaining('Current Time:'), findsOneWidget);
    },
  );
}