import 'package:flutter/material.dart';
import 'package:rows_columns_spacer/rows_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RowsScreen(),
      // uncomment to see columns screen
      // home: ColumnsScreen(),
    );
  }
}
