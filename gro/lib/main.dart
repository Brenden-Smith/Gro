import 'package:flutter/material.dart';

// Firebase stuff
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

// Files
import 'screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Gro());
}

class Gro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gro',
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
      routes: {
        Home.routeName: (ctx) => Home(),
        NameQuestion.routeName: (ctx) => NameQuestion(),
        OwnedPlant.routeName: (ctx) => OwnedPlant(),
        PlantSearch.routeName: (ctx) => PlantSearch(),
        PlantDesc.routeName: (ctx) => PlantDesc(),
        Register.routeName: (ctx) => Register(),
        SignIn.routeName: (ctx) => SignIn(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => SignIn());
      },
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: GoogleFonts.prozaLibre(),
          elevation: 0.0,
          backgroundColor: Colors.green,
        )
      )
    );
  }
}

