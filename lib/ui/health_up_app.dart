import 'package:flutter/material.dart';

import '../config/router/hu_go_router.dart';

class HealthUpApp extends StatelessWidget {
  const HealthUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: HUGoRouter.router,
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}
