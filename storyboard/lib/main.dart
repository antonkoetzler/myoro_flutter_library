// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeStoryboard();
  runApp(const App());
}
