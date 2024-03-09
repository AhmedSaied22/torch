import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchScreen extends StatefulWidget {
  const TorchScreen({super.key});

  @override
  State<TorchScreen> createState() => _TorchScreenState();
}

class _TorchScreenState extends State<TorchScreen> {
  TorchController torchController = TorchController();
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Simple Torch App',
            style: TextStyle(
              fontSize: 20,
              color: isActive ? Colors.amber : Colors.grey,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          IconButton(
            onPressed: () {
              isActive = !isActive;
              torchController.toggle();
              setState(() {});
            },
            icon: Icon(
              Icons.lightbulb_circle,
              size: 100,
              color: isActive ? Colors.amber : Colors.grey,
            ),
          ),
        ],
      )),
    );
  }
}
