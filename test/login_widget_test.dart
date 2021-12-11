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
  testWidgets('Email y contraseña vacías no permiten ingreso',
      (WidgetTester tester) async {
    Widget buildTestableWidget(Widget widget) {
      return new MediaQuery(
          data: new MediaQueryData(), child: new MaterialApp(home: widget));
    }

    //Crea una página de Login
    LoginWidget loginWidget = new LoginWidget();
    //Se agrega al tester de widgets
    await tester.pumpWidget(buildTestableWidget(loginWidget));
  });
}
