import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class StoryboardBody extends StatefulWidget {
  const StoryboardBody({super.key});

  @override
  State<StoryboardBody> createState() => _StoryboardBodyState();
}

final class _StoryboardBodyState extends State<StoryboardBody> {
  static const _sideBarMinWidth = 200.0;
  double get _sideBarMaxWidth => MediaQuery.of(context).size.width - 300;

  /// Control the width of [_WidgetListing].
  final _widgetListingWidthNotifier = ValueNotifier<double>(_sideBarMinWidth);

  /// Control what widget is being shown in [_WidgetViewer].
  final _widgetLoadedNotifier = ValueNotifier<Widget?>(null);

  void _updateWidgetListeningWidthNotifier(DragUpdateDetails details) {
    if (!mounted) return;
    final newWidth = _widgetListingWidthNotifier.value + details.delta.dx;
    if (newWidth < _sideBarMinWidth || newWidth > _sideBarMaxWidth) return;
    _widgetListingWidthNotifier.value = newWidth;
  }

  @override
  void dispose() {
    _widgetListingWidthNotifier.dispose();
    _widgetLoadedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: _widgetListingWidthNotifier,
          builder: (_, double width, __) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  constraints: BoxConstraints(
                    minWidth: _sideBarMinWidth,
                    maxWidth: _sideBarMaxWidth,
                  ),
                  child: _WidgetListing(_widgetLoadedNotifier),
                ),
                MyoroResizeDivider(
                  Axis.vertical,
                  dragCallback: _updateWidgetListeningWidthNotifier,
                ),
              ],
            );
          },
        ),
        Expanded(child: _WidgetViewer(_widgetLoadedNotifier)),
      ],
    );
  }
}

final class _WidgetListing extends StatelessWidget {
  final ValueNotifier<Widget?> widgetLoadedNotifier;

  const _WidgetListing(this.widgetLoadedNotifier);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return MyoroScrollable.singleChildScrollView(
      children: WidgetListingEnum.values.map(
        (WidgetListingEnum value) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _WidgetListingCategory(
                category: value.widgetCategory,
                widgetNames: value.widgetNames,
                onPressWidget: (String widgetName) => widgetLoadedNotifier.value = WidgetListingEnum.widgetViewerWidget(widgetName),
              ),
              if (value != WidgetListingEnum.values.last)
                MyoroBasicDivider(
                  Axis.horizontal,
                  shortValue: themeExtension.widgetListingCategoryDividerShortValue,
                  padding: themeExtension.widgetListingCategoryDividerPadding,
                ),
            ],
          );
        },
      ).toList(),
    );
  }
}

typedef _WidgetListingCategoryOnPressWidget = Function(String widgetName);

final class _WidgetListingCategory extends StatefulWidget {
  final String category;
  final List<String> widgetNames;
  final _WidgetListingCategoryOnPressWidget onPressWidget;

  const _WidgetListingCategory({
    required this.category,
    required this.widgetNames,
    required this.onPressWidget,
  });

  @override
  State<_WidgetListingCategory> createState() => _WidgetListingCategoryState();
}

final class _WidgetListingCategoryState extends State<_WidgetListingCategory> {
  String get _category => widget.category;
  List<String> get _widgetNames => widget.widgetNames;
  _WidgetListingCategoryOnPressWidget get _onPressWidget => widget.onPressWidget;

  bool _showOptions = false;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return Padding(
      padding: themeExtension.widgetListingCategoryPadding,
      child: Column(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        children: [
          _WidgetListingCategoryDropdownButton(
            _showOptions,
            category: _category,
            onPressed: () => setState(() => _showOptions = !_showOptions),
          ),
          if (_showOptions)
            ..._widgetNames.map<Widget>(
              (String widgetName) {
                return _WidgetListingCategoryWidgetButton(
                  widgetName,
                  onPressed: () => _onPressWidget(widgetName),
                );
              },
            ),
        ],
      ),
    );
  }
}

final class _WidgetListingCategoryDropdownButton extends StatelessWidget {
  final bool showOptions;
  final String category;
  final VoidCallback onPressed;

  const _WidgetListingCategoryDropdownButton(
    this.showOptions, {
    required this.category,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return MyoroIconTextHoverButton(
      icon: showOptions ? themeExtension.widgetListingCategoryDropdownButtonOpenedIcon : themeExtension.widgetListingCategoryDropdownButtonUnopenedIcon,
      text: category,
      textStyle: themeExtension.widgetListingCategoryDropdownButtonTextStyle,
      onPressed: onPressed,
    );
  }
}

final class _WidgetListingCategoryWidgetButton extends StatelessWidget {
  final String widgetName;
  final VoidCallback onPressed;

  const _WidgetListingCategoryWidgetButton(
    this.widgetName, {
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return MyoroIconTextHoverButton(
      text: widgetName,
      textStyle: themeExtension.widgetListingCategoryWidgetButtonTextStyle,
      mainAxisAlignment: themeExtension.widgetListingCategoryWidgetButtonContentCentered,
      onPressed: onPressed,
    );
  }
}

final class _WidgetViewer extends StatelessWidget {
  final ValueNotifier<Widget?> widgetLoadedNotifier;

  const _WidgetViewer(this.widgetLoadedNotifier);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widgetLoadedNotifier,
      builder: (_, Widget? widgetLoaded, __) {
        if (widgetLoaded == null) return const SizedBox.shrink();
        return widgetLoaded;
      },
    );
  }
}
