import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddNewPlanet extends StatefulWidget {
  static const routeName = '/AddNewPlanet';
  const AddNewPlanet({Key? key}) : super(key: key);

  @override
  _AddNewPlanetState createState() => _AddNewPlanetState();
}

class _AddNewPlanetState extends State<AddNewPlanet> {

  final _formKey = GlobalKey<FormState>();

  Color color = Colors.amber;

  final TextEditingController _radius = TextEditingController();
  final TextEditingController _distance = TextEditingController();
  final TextEditingController _speed = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Создание новой планеты',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            TextFormField(
              controller: _radius,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                labelText: 'Радиус планеты',
                // helperText: 'Введите число',
                hintText: 'Введите число',
              ),
              validator: (val) => val!.isEmpty ? 'Введите значение': null,
            ),
            TextFormField(
              controller: _distance,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Удаленность',
                // helperText: 'Введите число',
                hintText: 'Введите число',
              ),
              validator: (val) => val!.isEmpty ? 'Введите значение': null,
            ),
            TextFormField(
              controller: _speed,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Скорость вращения',
                // helperText: 'Введите число',
                hintText: 'Введите число',
              ),
              validator: (val) => val!.isEmpty ? 'Введите значение': null,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color)),
              child: Stack(children: [
                Text(
                  'Выбрать цвет',
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = Colors.black,
                  ),
                ),
                const Text(
                  'Выбрать цвет',
                ),
              ]),
              onPressed: () => _picKColor(context),
            ),
            ElevatedButton(
              child: const Text('Добавить планету'),
              onPressed: () {
                _submitForm();
              },
            ),
          ],
        ),
      ),
    );
  }
  void _submitForm(){
    if(_formKey.currentState!.validate()){
    }
  }

  void _picKColor(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.grey,
          title: const Text('Выбор цвета'),
          content: ListView(
            children: [
              ColorPicker(
                labelTypes: const [],
                portraitOnly: true,
                colorPickerWidth: 200,
                pickerColor: color,
                onColorChanged: (color) => setState(() => this.color = color),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'Выбрать',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      );
}
