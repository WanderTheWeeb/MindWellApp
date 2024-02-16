import 'package:flutter/material.dart';
import 'package:mindwell/routes/app_routes.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/utils/theme.dart';
import 'utils/strings_name.dart';

class MindWell extends StatelessWidget {
  const MindWell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.introduction,
      routes: appRoutes,
      theme: mindWellTheme,
      title: StringsName.appName,
    );
  }
}
