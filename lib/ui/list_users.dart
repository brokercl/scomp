import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scomp/controllers/auth_controller.dart';

class ListUsers extends GetView<AuthController> {
  const ListUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => controller.logout(),
            icon: const Icon(Icons.logout)),
      ),
      body: const Center(
        child: Text('list users'),
      ),
    );
  }
}
