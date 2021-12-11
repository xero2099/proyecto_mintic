// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_mintic/ui/pages/login/login_widget.dart';

void main() {
  group('Comprobación de funcionalidad de widget de login >', () {
    testWidgets('Email y contraseña vacías no permiten ingreso >',
        (WidgetTester tester) async {
      Widget buildTestableWidget(Widget widget) {
        return new MediaQuery(
            data: new MediaQueryData(), child: new MaterialApp(home: widget));
      }

      //Crea una página de Login
      LoginWidget loginWidget = new LoginWidget();
      //Se agrega al tester de widgets
      await tester.pumpWidget(buildTestableWidget(loginWidget));

      //Se presiona en el botón de Login
      Finder loginButton = find.byKey(Key('loginSubmit'));
      await tester.tap(loginButton);

      //Se 'bombea' el test de nuevo
      await tester.pump();

      //Se comprueba que el campo de usuario está vacío
      Finder userText = find.byKey(Key('textUser'));
      expect(userText.toString().contains(''), true);

      //Se 'bombea' el test de nuevo
      await tester.pump();

      //Se comprueba que el campo de contraseña está vacío
      Finder passText = find.byKey(Key('textPass'));
      expect(passText.toString().contains(''), true);
    });

    testWidgets('Contraseña vacía no permite ingreso',
        (WidgetTester tester) async {
      Widget buildTestableWidget(Widget widget) {
        return new MediaQuery(
            data: new MediaQueryData(), child: new MaterialApp(home: widget));
      }

      //Crea una página de Login
      LoginWidget loginWidget = new LoginWidget();
      //Se agrega al tester de widgets
      await tester.pumpWidget(buildTestableWidget(loginWidget));

      Finder userText = find.byKey(Key('textUser'));
      Finder passText = find.byKey(Key('textPass'));

      await tester.enterText(userText, 'lucas@xyz.com');
      await tester.enterText(passText, '');

      Finder loginButton = find.byKey(Key('loginSubmit'));
      await tester.tap(loginButton);
    });
  });
}
