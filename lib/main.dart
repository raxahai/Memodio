import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memodio/app/features/inventory/presentation/screens/santa_inventory_screen.dart';
import 'package:memodio/injection_container.dart' as di;

void main() {
  // injecting dependencies
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SantaInventoryScreen(),
    );
  }
}
