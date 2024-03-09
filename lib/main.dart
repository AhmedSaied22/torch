import 'package:flutter/material.dart';
import 'package:torch_app/theme/theme.dart';
import 'package:torch_app/torch_screen.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const TorchApp());
}

class TorchApp extends StatelessWidget {
  const TorchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppThemes.lightTheme,
      darkTheme: MyAppThemes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const TorchScreen(),
    );
  }
}
