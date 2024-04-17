import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
// import 'package:mindwell/src/utils/theme/theme.dart';

class MindWell extends StatelessWidget {
  const MindWell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'MindWell',
      routerConfig: appRoutes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurpleAccent,
          brightness: Brightness.light,
        ).copyWith(secondary: Colors.blueAccent),
        )
      );

    
  }
}
