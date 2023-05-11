import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class WelcomeScomp extends StatelessWidget {
  const WelcomeScomp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.toNamed('LoginForm'),
            icon: const Icon(Icons.login)),
        title: const Text("scomp"),
      ),
      body: const Center(
        child: Text(
          "Welcome to scomp!",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
