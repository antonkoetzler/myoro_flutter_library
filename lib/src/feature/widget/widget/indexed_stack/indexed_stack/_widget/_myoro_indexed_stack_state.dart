part of '../myoro_indexed_stack.dart';

/// [State] of [MyoroIndexedStack].
final class _MyoroIndexedStackState extends State<MyoroIndexedStack> {
  /// [MyoroIndexedStack.style]
  MyoroIndexedStackStyle get _style {
    return widget.style;
  }

  /// [MyoroIndexedStack.index]
  int get _index {
    return widget.index;
  }

  /// [MyoroIndexedStack.children]
  List<Widget> get _children {
    return widget.children;
  }

  /// [ValueNotifier] controlling the index.
  late final ValueNotifier<int> _indexController;

  @override
  void initState() {
    super.initState();
    _indexController = ValueNotifier(_index);
  }

  @override
  void didUpdateWidget(MyoroIndexedStack oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.index != _index) _indexController.value = _index;
  }

  @override
  void dispose() {
    _indexController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIndexedStackThemeExtension>();
    final indexedStackIndicatorSpacing =
        _style.indexedStackIndicatorSpacing ?? themeExtension.indexedStackIndicatorSpacing ?? 0;

    return InheritedProvider.value(
      value: _style,
      child: ValueListenableBuilder(
        valueListenable: _indexController,
        builder: (_, index, _) {
          return Column(
            spacing: indexedStackIndicatorSpacing,
            children: [
              Expanded(child: _IndexedStack(index, _children)),
              _Indicator(index, _children),
            ],
          );
        },
      ),
    );
  }
}
