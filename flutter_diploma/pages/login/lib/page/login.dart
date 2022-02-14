import 'package:flutter/material.dart';
import 'package:login/widgets/registred_form.dart';
import 'package:login/widgets/sign_app_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isRegistred = false;
  final DateTime _dateTime = DateTime.now();

  void _text() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(_isRegistred ? 'Уже есть аккаунт?' : 'Еще нет аккаунта?',
              style: TextStyle(fontSize: 15)),
          TextButton(
              onPressed: () {
                setState(() {
                  // showDatePicker(
                  //   context: context,
                  //   initialDate: _dateTime,
                  //   firstDate: DateTime(1990),
                  //   lastDate: DateTime(3000),
                  // );
                  _isRegistred = !_isRegistred;
                });
              },
              child: Text(_isRegistred ? 'Войти' : 'Регистрация',
                  style: TextStyle(color: Color(0xff9053EB)))),
          //     IconButton(onPressed: (){}, icon: Icon(Icons.credit_card_outlined)),
          //     IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/images/logo.png',
            width: 93,
            height: 75,
          ),
          SizedBox(height: 20),
          Text('Учет расходов', textAlign: TextAlign.center, style: TextStyle(fontSize: 24),
            ),
          SizedBox(height: 5),
          Text('Ваша история рассходов', textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
          Text('всегда под рукой', textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
          SizedBox(height: 5),
          RegistredForm(isRegistred: _isRegistred),
        ],
      ),
    );
  }
}
