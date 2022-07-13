import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerWidget extends StatefulWidget {
  final Function back;
  final Function getScan;
  const QrScannerWidget({
    Key? key,
    required this.back,
    required this.getScan,
  }) : super(key: key);

  @override
  State<QrScannerWidget> createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends State<QrScannerWidget> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');


  @override
  void dispose() {
    controller?.pauseCamera();
    controller?.dispose();
    super.dispose();
  }


  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() async{
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.back();
        return false;
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(flex: 4, child: _buildQrView(context)),
            Expanded(
              flex: 1,
              child: Container(
                child: Container(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Text('Сканирование QR-кода'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: FloatingActionButton(
                                heroTag: 'Camera2',
                                mini: true, // set it to true
                                onPressed: () async {
                                  await controller?.toggleFlash();
                                  setState(() {});
                                },
                                child: FutureBuilder(
                                  future: controller?.getFlashStatus(),
                                  builder: (context, snapshot) {
                                    //return Text('Фонарь: ${snapshot.data}');
                                    return Icon(
                                      Icons.highlight,
                                      color: Colors.white,
                                      size: 16.0,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              child: FloatingActionButton.extended(
                                heroTag: 'Camera',
                                onPressed: () => widget.back(),
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                label: Text(
                                  'Закрыть',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: FloatingActionButton(
                                  heroTag: 'Camera1',
                                  mini: true, // set it to true
                                  onPressed: () async {
                                    await controller?.flipCamera();
                                    setState(() {});
                                  },
                                  child: FutureBuilder(
                                    future: controller?.getCameraInfo(),
                                    builder: (context, snapshot) {
                                      if (snapshot.data != null) {
                                        //return Text('Камера: ${describeEnum(snapshot.data!)}');
                                        return Icon(
                                          Icons.flip_camera_android,
                                          color: Colors.white,
                                          size: 15.0,
                                        );
                                      } else {
                                        return Text('Загрузка');
                                      }
                                    },
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 1,
                  transform: Matrix4.translationValues(0.0, -16.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//---
  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery
        .of(context)
        .size
        .width < 400 || MediaQuery
        .of(context)
        .size
        .height < 400) ? 150.0 : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() async {
        result = scanData;
        await controller.pauseCamera();
        await widget.getScan(result!.code);
        await controller.resumeCamera();
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    log('');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
