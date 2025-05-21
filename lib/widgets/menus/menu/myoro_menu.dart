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
  MyoroMenuConfiguration<T> get _configuration => widget.configuration;

  late final _controller = MyoroMenuController<T>(_configuration);
  double? get _onEndReachedPosition => _controller.onEndReachedPosition;
  ScrollController get _scrollController => _controller.scrollController;

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  void didUpdateWidget(covariant MyoroMenu<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration = _configuration;
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
      constraints: _configuration.constraints,
      child: ValueListenableBuilder(valueListenable: _controller.itemsRequestController, builder: _builder),
    );
  }

  Widget _builder(_, MyoroRequest<Set<T>> state, __) {
    // Jump to the last position of the list before
    // calling [MyoroMenuConfiguration.onEndReachedRequest].
    if (state.status.isSuccess && _onEndReachedPosition != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.jumpTo(_onEndReachedPosition!);
      });
    }

    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Items(_controller),
      MyoroRequestEnum.error => const _DialogText('Error getting items.'),
    };
  }
}
