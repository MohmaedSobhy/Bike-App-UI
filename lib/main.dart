import 'package:bike_app/bike_app.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const BikeApp()));

  //runApp(BikeApp());
}
