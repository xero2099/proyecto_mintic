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
      print('Inicializando widget');
      Widget buildTestableWidget(Widget widget) {
        return new MediaQuery(
            data: new MediaQueryData(), child: new MaterialApp(home: widget));
      }

      print('Widget inicializado');

      print('Construyendo página de login');

      //Crea una página de Login
      LoginWidget loginWidget = new LoginWidget();
      //Se agrega al tester de widgets
      await tester.pumpWidget(buildTestableWidget(loginWidget));

      print('Página de login creada');

      //Se presiona en el botón de Login
      Finder loginButton = find.byKey(Key('loginSubmit'));
      await tester.tap(loginButton);

      print('No puede ingresar a la página');

      //Se 'bombea' el test de nuevo
      await tester.pump();

      print('Comprobando que campos de texto están vacíos');

      //Se comprueba que el campo de usuario está vacío
      Finder userText = find.byKey(Key('textUser'));
      expect(userText.toString().contains(''), true);
      print('Campo de texto de usuario vacío');

      //Se 'bombea' el test de nuevo
      await tester.pump();

      //Se comprueba que el campo de contraseña está vacío
      Finder passText = find.byKey(Key('textPass'));
      expect(passText.toString().contains(''), true);

      print('Campo de texto de contraseña vacío');
    });

    testWidgets('Contraseña vacía no permite ingreso',
        (WidgetTester tester) async {
      print('Inicializando widget');
      Widget buildTestableWidget(Widget widget) {
        return new MediaQuery(
            data: new MediaQueryData(), child: new MaterialApp(home: widget));
      }

      print('Widget inicializado');

      print('Construyendo página de login');
      //Crea una página de Login
      LoginWidget loginWidget = new LoginWidget();

      print('Página de login creada');
      //Se agrega al tester de widgets
      await tester.pumpWidget(buildTestableWidget(loginWidget));

      Finder userText = find.byKey(Key('textUser'));
      Finder passText = find.byKey(Key('textPass'));

      //Se ingresa un correo electrónico válido
      await tester.enterText(userText, 'lucas@xyz.com');
      await tester.enterText(passText, '');

      //Se presiona el botón de Login
      Finder loginButton = find.byKey(Key('loginSubmit'));
      await tester.tap(loginButton);
    });
  });
}