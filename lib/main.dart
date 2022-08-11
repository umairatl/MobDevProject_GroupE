import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_project/Presentation/Screens/Home/homepage.dart';
import 'package:recipe_project/Presentation/Screens/Onboarding/onboarding.dart';
import 'package:recipe_project/Presentation/Screens/User/profile_screen.dart';
import 'package:recipe_project/Presentation/Screens/Explore/explore.dart';
import 'package:recipe_project/business_logic/bloc/LoginAuth/auth_bloc.dart';
import 'Presentation/Routes/routes_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => AuthBloc(),
      child: MaterialApp(
        title: 'Recipe Apps',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Onboarding(),
        onGenerateRoute: RouteGenerator().generateRoute,
        routes: {
          '/homepage': (context) => Homepage(),
          '/explore': (context) => explore(),
          '/user': (context) => user(),
        },
      ),
    );
  }
}
