import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home/home_page.dart';
import 'stores/home_store.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: homeStore.theme,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
