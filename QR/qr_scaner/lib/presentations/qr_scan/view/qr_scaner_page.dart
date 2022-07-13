import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/qr_scan_controller.dart';
import '../controller/state.dart';
import '../widgets/index_widget.dart';
import '../widgets/qr_scaner_widget.dart';

class QrScannerPage extends StatelessWidget {
  const QrScannerPage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<QRScanCubit, QRScanState>(builder: (context, state) {
      return state.when(
        initial: () => IndexQrScannerWidget(
          qrScan: () => BlocProvider.of<QRScanCubit>(context).qrScan(),
        ),
        qr: () => QrScannerWidget(
          back: () => BlocProvider.of<QRScanCubit>(context).back(),
          getScan: (value) => BlocProvider.of<QRScanCubit>(context)
              .onChangeMaterialsForQr(value),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QRScanCubit(),
      child: _buildBody(context),
    );
  }
}
