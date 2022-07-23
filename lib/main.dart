import 'package:flutter/material.dart';
import 'package:playground/src/playground_view.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const PlaygroundView(),
      ),
    );
