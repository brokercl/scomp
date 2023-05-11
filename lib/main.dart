import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:scomp/entities/certif_saldo.dart';
import 'package:scomp/ui/forms/login_form.dart';

import 'controllers/auth_controller.dart';
import 'entities/user.dart';
import 'ui/welcome_scomp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // AuthController mus be declare here in main
  // as a persistent controller
  // otherwise when logOut() in authController
  //  AuthController will be delete from memory
  // causing error in new login process

  // on the other hand we have onDispose method
  // to delete any controller or route from memory
  Get.put(AuthController());

  openIsarDB();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/WelcomeScomp',
    initialBinding: BindingsBuilder(
        // BindingsBuilder evita Binding class
        // on initialRoute: '/home', in this case
        // load ALL service as lazyPut, this meangs
        // the service will register buy only will be used when nedded
        // fenix is for call service whenever is needed
        // this way is like initService()
        // but you can see inmediatley
        () {
      // Get.lazyPut(() => UserController(), fenix: true);
    }),
    getPages: [
      GetPage(
        name: '/WelcomeScomp',
        page: () => const WelcomeScomp(),
      ),
      GetPage(
        name: '/LoginForm',
        page: () => const LoginForm(),
      ),
    ],
    onDispose: () {
      Get.delete();
    },
  ));
}

Future<Isar> openIsarDB() async {
  if (Isar.instanceNames.isEmpty) {
    return await Isar.open(
      [
        UserSchema,
        CertifSaldoSchema,
      ],
      inspector: true,
    );
  }
  return Future.value(Isar.getInstance());
}
