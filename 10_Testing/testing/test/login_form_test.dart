import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/views/login_view.dart';

void main(){

  testWidgets('Login form tests', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: LoginView(),
      )
    );

    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Phone'), findsOneWidget);
    expect(find.text('Отправить'), findsOneWidget);
    expect(find.text('Уже есть аккаунт?'), findsOneWidget);
    expect(find.text('Добро пожаловать'), findsNothing);

    await tester.enterText(find.byKey(Key('fieldEmail')), 'test@test.com');
    expect(find.text('test@test.com'), findsOneWidget);

    await tester.enterText(find.byKey(Key('fieldPhone')), '88008008080');
    expect(find.text('88008008080'), findsOneWidget);

    await tester.tap(find.text('Отправить'));
    await tester.pump();
    expect(find.text('Добро пожаловать'), findsOneWidget);
  });
}