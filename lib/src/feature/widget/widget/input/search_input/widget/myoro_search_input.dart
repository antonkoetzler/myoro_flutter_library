import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_search_button.dart';
part '../_widget/_input.dart';

/// Search input.
class MyoroSearchInput<T> extends StatelessWidget {
  /// Default constructor.
  const MyoroSearchInput({
    super.key,
    required this.itemBuilder,
    required this.selectedItemBuilder,
    required this.request,
  });

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [String] builder of the item that is clicked in the dropdown.
  final MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder;

  /// Items builder.
  final MyoroSearchInputRequest<T> request;

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSearchInputViewModel(selectedItemBuilder, request),
      dispose: (_, v) => v.dispose(),
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroSearchInputViewModel<T>>();
          final state = viewModel.state;
          final showingController = state.showingController;
          final requestController = state.requestController;
          final selectedItemController = state.selectedItemController;

          return ListenableBuilder(
            listenable: Listenable.merge([requestController, selectedItemController]),
            builder: (_, _) {
              final request = requestController.value;
              final selectedItem = selectedItemController.value;

              final status = request.status;

              return MyoroDropdown<T>(
                showingController: showingController,
                itemBuilder: itemBuilder,
                selectedItems: {?selectedItem},
                items: switch (status) {
                  MyoroRequestEnum.idle => null,
                  MyoroRequestEnum.loading => null,
                  MyoroRequestEnum.success => request.data!,
                  MyoroRequestEnum.error => null,
                },
                child: const _Input(),
              );
            },
          );
        },
      ),
    );
  }
}
