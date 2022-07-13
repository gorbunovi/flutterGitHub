import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_scaner/presentations/qr_scan/controller/state.dart';

class QRScanCubit extends Cubit<QRScanState> {
  QRScanCubit() : super(const Initial());

  void qrScan() {
    emit(const Qr());
  }

  void back() {
    emit(const Initial());
  }

  Future<void> onChangeMaterialsForQr(String value) async {
    //Добавляем список материалов в факт
  }

}