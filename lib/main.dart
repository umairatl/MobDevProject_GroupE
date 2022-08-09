import 'package:flutter/material.dart';
import 'package:recipe_project/details.dart';
import 'package:recipe_project/homepage.dart';
import 'Presentation/Routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      // routes: {
      //   '/recipeDetails': (context) => recipeDetails(),
      // }
    );
  }
}




// import 'package:flutter/material.dart';

// import 'Presentation/Routes/routes_generator.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Overlay Loader',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: "/",
//       onGenerateRoute: RouteGenerator().generateRoute,
//     );
//   }
// }
