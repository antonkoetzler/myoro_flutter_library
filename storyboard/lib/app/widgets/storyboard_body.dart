import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class StoryboardBody extends StatefulWidget {
  const StoryboardBody({super.key});

  @override
  State<StoryboardBody> createState() => _StoryboardBodyState();
}

final class _StoryboardBodyState extends State<StoryboardBody> {
  final _widgetListingWidthNotifier = ValueNotifier<double>(200);

  void _updateWidgetListeningWidthNotifier(DragUpdateDetails details) {
    if (!mounted) return;
    _widgetListingWidthNotifier.value += details.delta.dx;
  }

  @override
  void dispose() {
    _widgetListingWidthNotifier.dispose();
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
                    minWidth: context.resolveThemeExtension<StoryboardBodyThemeExtension>().sideBarMinWidth,
                    maxWidth: MediaQuery.of(context).size.width - 11,
                  ),
                  child: const _WidgetListing(),
                ),
                MyoroResizeDivider(
                  Axis.vertical,
                  dragCallback: _updateWidgetListeningWidthNotifier,
                ),
              ],
            );
          },
        ),
        const Expanded(child: _WidgetViewer()),
      ],
    );
  }
}

final class _WidgetListing extends StatelessWidget {
  const _WidgetListing();

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
                onPressWidget: (String widgetName) {
                  if (kDebugMode) {
                    print(widgetName);
                  }
                },
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
      textStyle: themeExtension.widgetListingCategoryTextStyle,
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

    return Padding(
      padding: EdgeInsets.only(left: themeExtension.widgetListingCategoryWidgetButtonOffset),
      child: MyoroIconTextHoverButton(
        text: widgetName,
        textStyle: themeExtension.widgetListingWidgetTextStyle,
        textAlign: themeExtension.widgetListingCategoryWidgetButtonTextAlign,
        onPressed: onPressed,
      ),
    );
  }
}

final class _WidgetViewer extends StatelessWidget {
  const _WidgetViewer();

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
