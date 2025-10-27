import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_search_button.dart';
part '../_widget/_input.dart';

/// Search input.
class MyoroSearchInput<T> extends StatelessWidget {
  /// Default constructor.
  const MyoroSearchInput({super.key, required this.itemBuilder});

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSearchInputViewModel(),
      dispose: (_, v) => v.dispose(),
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroSearchInputViewModel>();
          final state = viewModel.state;
          final showingController = state.showingController;

          return MyoroDropdown(showingController: showingController, itemBuilder: itemBuilder, child: const _Input());
        },
      ),
    );
  }
}
