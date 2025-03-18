import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

typedef _WidgetListingCategoryOnPressWidget = Function(String widgetName);

final class StoryboardBody extends StatefulWidget {
  const StoryboardBody({super.key});

  @override
  State<StoryboardBody> createState() => _StoryboardBodyState();
}

final class _StoryboardBodyState extends State<StoryboardBody> {
  /// Control what widget is being shown in [_WidgetViewer].
  final _widgetLoadedNotifier = ValueNotifier<Widget?>(null);

  @override
  void dispose() {
    _widgetLoadedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicWidth(child: _WidgetListing(_widgetLoadedNotifier)),
            const MyoroBasicDivider(
              configuration: MyoroBasicDividerConfiguration(
                direction: Axis.vertical,
              ),
            ),
          ],
        ),
        Expanded(child: _WidgetViewer(_widgetLoadedNotifier)),
      ],
    );
  }
}

final class _WidgetListing extends StatefulWidget {
  final ValueNotifier<Widget?> widgetLoadedNotifier;

  const _WidgetListing(this.widgetLoadedNotifier);

  @override
  State<_WidgetListing> createState() => _WidgetListingState();
}

final class _WidgetListingState extends State<_WidgetListing> {
  /// [ValueNotifier] responsible for automatically hiding previously opened categories when others are pressed (only display one at a time).
  final _widgetCategoryShowingNotifier = ValueNotifier<String?>(null);

  @override
  void dispose() {
    _widgetCategoryShowingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _widgetCategoryShowingNotifier,
      builder: (_, __, ___) {
        return SingleChildScrollView(
          child: Column(
            children:
                WidgetListingEnum.values.map((WidgetListingEnum value) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _WidgetListingCategory(
                        category: value.widgetCategory,
                        widgetNames: value.widgetNames,
                        widgetCategoryShowingNotifier:
                            _widgetCategoryShowingNotifier,
                        onPressWidget:
                            (String widgetName) =>
                                widget.widgetLoadedNotifier.value =
                                    WidgetListingEnum.widgetViewerWidget(
                                      widgetName,
                                    ),
                      ),
                      if (value != WidgetListingEnum.values.last)
                        MyoroBasicDivider(
                          configuration: MyoroBasicDividerConfiguration(
                            direction: Axis.horizontal,
                            shortValue:
                                themeExtension
                                    .widgetListingCategoryDividerShortValue,
                            padding:
                                themeExtension
                                    .widgetListingCategoryDividerPadding,
                          ),
                        ),
                    ],
                  );
                }).toList(),
          ),
        );
      },
    );
  }
}

final class _WidgetListingCategory extends StatelessWidget {
  final String category;
  final List<String> widgetNames;
  final ValueNotifier<String?> widgetCategoryShowingNotifier;
  final _WidgetListingCategoryOnPressWidget onPressWidget;

  const _WidgetListingCategory({
    required this.category,
    required this.widgetNames,
    required this.widgetCategoryShowingNotifier,
    required this.onPressWidget,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<StoryboardBodyThemeExtension>();
    final isSelected = category == widgetCategoryShowingNotifier.value;

    return Padding(
      padding: themeExtension.widgetListingCategoryPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _WidgetListingCategoryDropdownButton(
            isSelected,
            category: category,
            onPressed:
                () =>
                    widgetCategoryShowingNotifier.value =
                        isSelected ? null : category,
          ),
          if (isSelected) ...[
            SizedBox(height: themeExtension.widgetListingCategorySpacing),
            ...widgetNames.map<Widget>((String widgetName) {
              return _WidgetListingCategoryWidgetButton(
                widgetName,
                onPressed: () => onPressWidget(widgetName),
              );
            }),
          ],
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
    final themeExtension =
        context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return MyoroIconTextHoverButton(
      icon:
          showOptions
              ? themeExtension.widgetListingCategoryDropdownButtonOpenedIcon
              : themeExtension.widgetListingCategoryDropdownButtonUnopenedIcon,
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
    final themeExtension =
        context.resolveThemeExtension<StoryboardBodyThemeExtension>();

    return MyoroIconTextHoverButton(
      text: widgetName,
      textStyle: themeExtension.widgetListingCategoryWidgetButtonTextStyle,
      mainAxisAlignment:
          themeExtension.widgetListingCategoryWidgetButtonContentCentered,
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
