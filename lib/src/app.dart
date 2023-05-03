import 'package:app_recetas/src/screens/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "CookBook",
      initialRoute: "/",
      theme: ThemeData(
        colorScheme: const ColorScheme(brightness: Brightness.light, primary: Color.fromARGB(255, 20, 179, 197), onPrimary: Color.fromARGB(255, 0, 154, 171), secondary: Color.fromARGB(255, 0, 171, 140), onSecondary: Color.fromARGB(255, 0, 179, 182), background: Color.fromARGB(255, 0, 40, 171), onBackground: Color.fromARGB(255, 0, 51, 171), surface: Color.fromARGB(255, 9, 121, 127), onSurface: Color.fromARGB(255, 0, 154, 171),error: Color.fromARGB(255, 221, 68, 48), onError: Color.fromARGB(255, 255, 44, 44))
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context){
          switch (settings.name) {
            case "/":
              return const Login();
            default:
              return const Text("Not Found");
          }
        });
      },
  );
 }
}