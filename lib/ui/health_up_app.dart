import 'package:flutter/material.dart';

import '../config/router/hu_router.dart';

class HealthUpApp extends StatelessWidget {
  const HealthUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: HURouter.onGenerateRoute,
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
