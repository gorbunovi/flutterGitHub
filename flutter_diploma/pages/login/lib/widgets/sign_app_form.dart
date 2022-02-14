import 'package:flutter/material.dart';


class SignAppForm extends StatelessWidget {
  const SignAppForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Пароль',
              ),
            ),
          ],
        )

    );
  }
}
