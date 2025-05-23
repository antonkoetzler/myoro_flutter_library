import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_dialog_text.dart';
part '_widgets/_item.dart';
part '_widgets/_items.dart';
part '_widgets/_loader.dart';
part '_widgets/_search_bar.dart';

/// A menu widget that should not be used in production code, it is used
/// within [_MyoroDropdown] & [MyoroInput] similar to the software dmenu.
class MyoroMenu<T> extends StatefulWidget {
  /// Configuration options.
  final MyoroMenuConfiguration<T> configuration;

  const MyoroMenu({super.key, required this.configuration});

  @override
  State<MyoroMenu<T>> createState() => _MyoroMenuState<T>();
}

final class _MyoroMenuState<T> extends State<MyoroMenu<T>> {
  late final _controller = MyoroMenuController<T>(configuration: widget.configuration);

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Container(
      decoration: BoxDecoration(
        color: themeExtension.primaryColor,
        border: themeExtension.border,
        borderRadius: themeExtension.borderRadius,
      ),
      constraints: _controller.state.configuration.constraints,
      child: ValueListenableBuilder(valueListenable: _controller.state.itemsRequestController, builder: _builder),
    );
  }

  Widget _builder(_, MyoroRequest<Set<T>> state, __) {
    _controller.jumpToBottomPreviousPosition();
    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Items(_controller),
      MyoroRequestEnum.error => const _DialogText('Error getting items.'),
    };
  }
}
