import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 210, 153, 236),
              titleTextStyle: TextStyle(color: Colors.black)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: "Poppins"),
      initialRoute: GetRoutes.login,
      getPages: GetRoutes.routes,
    );
  }
}
