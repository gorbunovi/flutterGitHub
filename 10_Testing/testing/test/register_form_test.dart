import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/views/login_view.dart';

void main(){

  testWidgets('Login register tests', (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(
          home: LoginView(),
        )
    );

    expect(find.byKey(Key('fieldFlatButton')), findsOneWidget);
    expect(find.text('Уже есть аккаунт?'), findsOneWidget);

    await tester.tap(find.byKey(Key('fieldFlatButton')));
    await tester.pump();
    expect(find.text('Еще нет аккаунта? '), findsOneWidget);

    expect(find.byKey(Key('fieldFirstName')), findsOneWidget);
    expect(find.byKey(Key('fieldLastName')), findsOneWidget);
    expect(find.byKey(Key('fieldPhone')), findsOneWidget);
    expect(find.byKey(Key('fieldEmail')), findsOneWidget);
    expect(find.byKey(Key('fieldButton')), findsOneWidget);
    expect(find.text('Вы успешно зарегистрировались'), findsNothing);

  });
}