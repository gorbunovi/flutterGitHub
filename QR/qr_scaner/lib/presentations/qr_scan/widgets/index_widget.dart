import 'package:flutter/material.dart';

class IndexQrScannerWidget extends StatelessWidget {
  final FocusNode _keyFocus = FocusNode();
  final Function qrScan;

  IndexQrScannerWidget({
    Key? key,
    required this.qrScan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_outlined),
            onPressed: () => qrScan(),
          )
        ],
        centerTitle: true,
        title: const Text('QR SCANNER'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            autofocus: true, //если убрать эти 2 строчки
            focusNode: _keyFocus, // то все нормально работает
          ),
        ),
      ),
    );
  }
}
