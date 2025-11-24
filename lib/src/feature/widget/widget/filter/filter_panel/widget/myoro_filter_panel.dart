import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Filter panel of MFL.
///
/// Used as a standardized [Widget] to store filters on a screen.
class MyoroFilterPanel extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroFilterPanelStyle();

  /// Default constructor.
  const MyoroFilterPanel({
    super.key,
    this.style = styleDefaultValue,
    this.searchBarController,
    this.onFiltersCleared,
    required this.filters,
  }) : assert(filters.length > 0, '[MyoroFilterPanel]: [filters] cannot be empty.');

  /// Style.
  final MyoroFilterPanelStyle style;

  /// [TextEditingController] of the search bar.
  ///
  /// Shows the search bar if provided.
  final TextEditingController? searchBarController;

  /// Function that is executed when the filters are cleared.
  ///
  /// Provide this when there are filters that can be cleared.
  final VoidCallback? onFiltersCleared;

  /// Filters.
  final List<Widget> filters;

  /// Build function.
  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilterPanelThemeExtension>();
    final searchBarFiltersSpacing = style.searchBarFiltersSpacing ?? themeExtension.searchBarFiltersSpacing ?? 0;
    final filtersSpacing = style.filtersSpacing ?? themeExtension.filtersSpacing ?? 0;

    final filtersLength = filters.length;

    return Column(
      spacing: searchBarFiltersSpacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (searchBarController != null) MyoroSearchBarInput(controller: searchBarController!),
        IntrinsicHeight(
          child: Row(
            spacing: filtersSpacing,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: filtersLength == 1
                    ? filters.first
                    : MyoroListScrollableBuilder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filtersLength,
                        itemBuilder: (_, i) => filters[i],
                      ),
              ),
              if (onFiltersCleared != null) ...[
                IntrinsicWidth(
                  child: MyoroIconTextButton(
                    style: const MyoroIconTextButtonStyle().secondary(context),
                    icon: Icons.close,
                    onTapUp: (_, _) => onFiltersCleared?.call(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
