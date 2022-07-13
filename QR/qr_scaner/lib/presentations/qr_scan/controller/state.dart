import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class QRScanState with _$QRScanState {
  const factory QRScanState.initial() = Initial;
  const factory QRScanState.qr() = Qr;
}