import 'package:alifsoft/add_screen.dart';
import 'package:alifsoft/bottomnav_screen.dart';
import 'package:alifsoft/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box box = await Hive.openBox('contact_list');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 25)),
          brightness: Brightness.light,
          backgroundColor: Color(0xFF5F8575),
          bottomAppBarColor: Color(0xFF40826D),
          cardColor: Color.fromARGB(255, 248, 208, 133),
          scaffoldBackgroundColor: Color(0xFFF2D2BD),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          fontFamily: 'FuzzyBubbles'),
      routes: {
        '/nav_screen': (context) => BottomNavController(),
        '/addscreen': (context) => Add_Screen(),
        '/chatscreen': (context) => ChatScreen()
      },
      initialRoute: '/nav_screen',
    );
  }
}
