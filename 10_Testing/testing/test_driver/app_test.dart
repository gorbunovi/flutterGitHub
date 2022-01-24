// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Login form tests', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    final fieldFinderEmail = find.byValueKey('fieldEmail');
    final fieldFinderPhone = find.byValueKey('fieldPhone');
    final fieldFinderSubmit = find.text('Отправить');

    test('Zerro email and phone field', () async{
      await driver.tap(fieldFinderEmail);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successEmail = find.text('Введите email');
      expect(await driver.getText(successEmail), 'Введите email');
    });

    test('Incorrect email field', () async{
      await driver.tap(fieldFinderEmail);
      await driver.waitFor(find.text(''));
      await driver.enterText('test');
      await driver.tap(fieldFinderSubmit);
      final success = find.text('Поле email заполнено не корректно');
      expect(await driver.getText(success), 'Поле email заполнено не корректно');
      await driver.tap(fieldFinderEmail);
      await driver.waitFor(find.text(''));
      await driver.enterText('test@test');
      await driver.tap(fieldFinderSubmit);
      expect(await driver.getText(success), 'Поле email заполнено не корректно');
    });

    test('Test email field', () async{
      await driver.tap(fieldFinderEmail);
      await driver. waitFor(find.text(''));
      await driver.enterText('test@test.ru');
      await driver.waitFor(find.text('test@test.ru'));
    });

    test('Zerro phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Введите телефон');
      expect(await driver.getText(successPhone), 'Введите телефон');
    });

    test('Incorrect phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver.waitFor(find.text(''));
      await driver.enterText('test');
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Введите телефон');
      expect(await driver.getText(successPhone), 'Введите телефон');
    });

    test('Test phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver. waitFor(find.text(''));
      await driver.enterText('88008008080');
      await driver.waitFor(find.text('88008008080'));
    });

    test('Test button', () async{
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Добро пожаловать');
      expect(await driver.getText(successPhone), 'Добро пожаловать');
    });
  });

  group('Rigister form tests', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    final fieldFinderRegister = find.byValueKey('fieldFlatButton');
    final fieldFinderName = find.byValueKey('fieldFirstName');
    final fieldFinderLastName = find.byValueKey('fieldLastName');
    final fieldFinderEmail = find.byValueKey('fieldEmail');
    final fieldFinderPhone = find.byValueKey('fieldPhone');
    final fieldFinderSubmit = find.byValueKey('fieldButton');

    test('Test submit registr', () async{
      await driver.tap(fieldFinderRegister);
      final success = find.text('Еще нет аккаунта? ');
      expect(await driver.getText(success), 'Еще нет аккаунта? ');
    });

    test('Zerro name field', () async{
      await driver.tap(fieldFinderName);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Введите имя');
      expect(await driver.getText(successPhone), 'Введите имя');
    });

    test('Test name field', () async{
      await driver.tap(fieldFinderName);
      await driver.waitFor(find.text(''));
      await driver.enterText('Игорь');
      await driver.waitFor(find.text('Игорь'));
    });

    test('Zerro last name field', () async{
      await driver.tap(fieldFinderLastName);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Введите фамилию');
      expect(await driver.getText(successPhone), 'Введите фамилию');
    });

    test('Test last name field', () async{
      await driver.tap(fieldFinderLastName);
      await driver.waitFor(find.text(''));
      await driver.enterText('Горбунов');
      await driver.waitFor(find.text('Горбунов'));
    });

    test('Zerro phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Заполните поле телефон');
      expect(await driver.getText(successPhone), 'Заполните поле телефон');
    });

    test('Incorrect phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver.waitFor(find.text(''));
      await driver.enterText('test');
      await driver.tap(fieldFinderSubmit);
      final successPhone = find.text('Заполните поле телефон');
      expect(await driver.getText(successPhone), 'Заполните поле телефон');
    });

    test('Test phone field', () async{
      await driver.tap(fieldFinderPhone);
      await driver. waitFor(find.text(''));
      await driver.enterText('88008008080');
      await driver.waitFor(find.text('88008008080'));
    });

    test('Zerro email field', () async{
      await driver.tap(fieldFinderEmail);
      await driver.waitFor(find.text(''));
      await driver.tap(fieldFinderSubmit);
      final successEmail = find.text('Заполните поле email');
      expect(await driver.getText(successEmail), 'Заполните поле email');
    });

    test('Incorrect email field', () async{
      await driver.tap(fieldFinderEmail);
      await driver.waitFor(find.text(''));
      await driver.enterText('test');
      await driver.tap(fieldFinderSubmit);
      final success = find.text('Емейл не корректный');
      expect(await driver.getText(success), 'Емейл не корректный');;
      await driver.enterText('test@test');
      await driver.tap(fieldFinderSubmit);
      expect(await driver.getText(success), 'Емейл не корректный');
    });

    test('Test email field', () async{
      await driver.tap(fieldFinderEmail);
      await driver.enterText('test@test.ru');
      await driver.waitFor(find.text('test@test.ru'));
    });
  });
}
