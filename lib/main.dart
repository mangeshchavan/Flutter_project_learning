// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/store.dart';
import 'package:myapp/pages/Catalogpage.dart';
import 'package:myapp/pages/cart_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/pages/main_page.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.mainPageRoute,
      routes: {
        MyRoutes.mainPageRoute: (context) => MainPage(),
        MyRoutes.catalogRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.profileRoute: (context) => ProfilePage(),
      },
    );
  }
}
