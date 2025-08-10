import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_dialog_text.dart';
part '_widget/_item.dart';
part '_widget/_items_section.dart';
part '_widget/_loader.dart';
part '_widget/_menu.dart';
part '_widget/_search_bar.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroSingularDropdown], [MyoroMultiDropdown] & [MyoroInput].
class MyoroMenu<T> extends MyoroStatefulWidget {
  const MyoroMenu({super.key, super.createViewModel, required this.configuration});

  /// Configuration.
  final MyoroMenuConfiguration<T> configuration;

  @override
  State<MyoroMenu<T>> createState() => _MyoroMenuState<T>();
}

final class _MyoroMenuState<T> extends State<MyoroMenu<T>> {
  bool get _createViewModel => widget.createViewModel;

  MyoroMenuViewModel<T>? _localViewModel;
  MyoroMenuViewModel<T> get _viewModel {
    final viewModel = _createViewModel
        ? (_localViewModel ??= MyoroMenuViewModel<T>())
        : context.read<MyoroMenuViewModel<T>>();
    return viewModel..initialize(widget.configuration);
  }

  @override
  void initState() {
    super.initState();
    _viewModel.fetch();
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final configuration = _viewModel.state.configuration;

    final child = Container(
      decoration: BoxDecoration(
        color: configuration.backgroundColor ?? themeExtension.backgroundColor,
        border: configuration.border,
        borderRadius: configuration.borderRadius ?? themeExtension.borderRadius,
      ),
      constraints: _viewModel.state.configuration.constraints,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.itemsRequestController,
        builder: (_, MyoroRequest<Set<T>> state, _) {
          _viewModel.jumpToBottomPreviousPosition();
          return switch (state.status) {
            MyoroRequestEnum.idle => const _Loader(),
            MyoroRequestEnum.loading => const _Loader(),
            MyoroRequestEnum.success => _Menu<T>(),
            MyoroRequestEnum.error => const _DialogText('Error getting items.'),
          };
        },
      ),
    );

    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
