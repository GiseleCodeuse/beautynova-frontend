import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/main.dart'; // Utiliser import relatif pour éviter les problèmes de package

void main() {
  testWidgets('Landing page displays button and navigates to onboarding', (WidgetTester tester) async {
    // Build your app WITHOUT const
   // await tester.pumpWidget(MyApp());

    // Vérifie que le texte principal est affiché
    expect(find.text("Révélez l'éclat de votre peau"), findsOneWidget);

    // Vérifie que le bouton "Démarrer ma consultation" existe
    final startButton = find.text("Démarrer ma consultation");
    expect(startButton, findsOneWidget);

    // Clique sur le bouton et attend la navigation
    await tester.tap(startButton);
    await tester.pumpAndSettle();

    // Vérifie qu'on est redirigé vers l'onboarding
    expect(find.text("Profil de peau"), findsOneWidget);
  });
}
