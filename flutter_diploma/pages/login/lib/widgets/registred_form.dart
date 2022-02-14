import 'package:flutter/material.dart';


class RegistredForm extends StatelessWidget  {
  RegistredForm({Key? key, required this.isRegistred}) : super(key: key);

  final bool isRegistred;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff9053EB), // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: (){
                  isRegistred ?
                  print('Регистрация') :
                  print('Вход');
                },
                child: Text(isRegistred ? 'Регистрация' : 'Войти'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
