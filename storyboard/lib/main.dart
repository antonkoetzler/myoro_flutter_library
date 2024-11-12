import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_manager/window_manager.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  windowManager.ensureInitialized();
  windowManager.setMinimumSize(const Size(600, 600));

  runApp(
    BlocProvider(
      create: (_) => WidgetShowcaseBloc(),
      child: const _App(),
    ),
  );
}

final class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return const MyoroMaterialApp(
      title: 'myoro_flutter_library storyboard',
      themeExtensionsBuilder: createStoryboardThemeExtensions,
      home: Scaffold(
        appBar: StoryboardAppBar(),
        body: StoryboardBody(),
      ),
    );
  }
}
