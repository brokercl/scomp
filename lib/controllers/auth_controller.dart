import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:scomp/entities/user.dart';
import 'package:scomp/globals.dart';

import '../main.dart';
import '../ui/list_users.dart';

class AuthController extends GetxController {
  late Future<Isar> db;

  final emailController = TextEditingController(text: '@gmail.com');
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

// whos logged in
  User? currentUser;

  void login(
    String email,
    String password,
  ) async {
    db = openIsarDB();
    final isar = await db;

    // ignore: unnecessary_null_in_if_null_operators
    currentUser = await isar.users.getByEmail(email);
    print(currentUser?.email);
    if (currentUser?.email == email && currentUser?.password == password) {
      Get.to(() => const ListUsers());
    } else {
      Get.snackbar(
        'Login Error',
        'email or password not founded..',
        messageText: const Text('check A a B b C c'),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void logout() async {
    formKey.currentState?.reset();
    final isar = await db;
    currentUser = resetglobalUser(); // set the current user to null
    await isar.close();
    Get.offAllNamed('/WelcomeScomp'); // navigate to the login screen
  }
}
