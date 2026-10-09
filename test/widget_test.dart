import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:personal_id_card/main.dart';

void main() {
  testWidgets('Personal Identity Card widget and structure test', (
    WidgetTester tester,
  ) async {
    // Build the PersonalIdCardApp
    await tester.pumpWidget(const PersonalIdCardApp());

    // 1. Verify Mandatory Widgets are present
    expect(find.byType(Scaffold), findsOneWidget);
    final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    expect(scaffold.body, isA<Center>());

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(Container), findsWidgets);
    expect(find.byType(Column), findsWidgets);
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.byType(Text), findsWidgets);
    expect(find.byType(Icon), findsWidgets);

    // 2. Verify Personal Information fields
    expect(find.text('Personal Identity Card'), findsOneWidget);
    expect(find.text(IdCardScreen.name), findsOneWidget);
    expect(find.text(IdCardScreen.profession), findsOneWidget);
    expect(find.text(IdCardScreen.location), findsOneWidget);
    expect(find.text(IdCardScreen.age), findsOneWidget);
    expect(find.text(IdCardScreen.idNo), findsOneWidget);
    expect(find.text(IdCardScreen.bloodGroup), findsOneWidget);
    expect(find.text(IdCardScreen.email), findsOneWidget);

    // 3. Verify Icons used for statistics & email
    expect(find.byIcon(Icons.cake), findsOneWidget);
    expect(find.byIcon(Icons.badge), findsOneWidget);
    expect(find.byIcon(Icons.bloodtype), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
  });
}
