<<<<<<< HEAD

=======
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
=======
import 'package:provider/provider.dart';

import 'Features/search/data/search_provider.dart';
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp.router(
=======
    return Consumer(
        builder: (context, themeProvider, child) {
      return MultiProvider( providers: [
        ChangeNotifierProvider<SearchProvider>(create: (context) => SearchProvider()),

      ],
   child: MaterialApp.router(
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
<<<<<<< HEAD
    );
=======
    ));
  }

  );

>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
  }
}
