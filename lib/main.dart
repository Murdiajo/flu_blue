import 'package:bluetooth_flu/src/features/devices/presentacion/bluetooth_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:bluetooth_flu/src/core/injection_container.dart' as sl;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BluetoothListingScreen(),
    );
  }
}
