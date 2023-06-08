import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'stores/home_store.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HomeStore>(
      create: (_) => HomeStore(),
      child: const MyApp(),
    ),
  );
}
