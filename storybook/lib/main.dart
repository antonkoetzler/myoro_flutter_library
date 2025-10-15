import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeStorybook();
  runApp(const App());
}
