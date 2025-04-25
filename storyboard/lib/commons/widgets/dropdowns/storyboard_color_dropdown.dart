import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

typedef StoryboardColorDropdownOnChanged = void Function(Color? color);

/// [Color] picker [MyoroSingularDropdown].
///
/// TODO: Needs to be tested.
final class StoryboardColorDropdown extends StatelessWidget {
  /// [MyoroSingularDropdownConfiguration.label]
  final String? label;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final StoryboardColorDropdownOnChanged onChanged;

  const StoryboardColorDropdown({super.key, this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<Color>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label ?? 'Color',
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestColors.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _itemLabelBuilder,
        onChanged: onChanged,
      ),
    );
  }

  MyoroMenuItem _itemBuilder(Color color) {
    return MyoroMenuItem(
      builder: (_, MyoroTapStatusEnum tapStatusEnum) {
        return _Item(color, tapStatusEnum);
      },
    );
  }

  String _itemLabelBuilder(Color color) {
    return color.hexadecimalFormat;
  }
}

final class _Item extends StatelessWidget {
  final Color _color;
  final MyoroTapStatusEnum _tapStatusEnum;

  const _Item(this._color, this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardColorDropdownThemeExtension>();
    final EdgeInsets itemPadding = themeExtension.itemPadding;
    final double itemSpacing = themeExtension.itemSpacing;

    return Padding(
      padding: itemPadding,
      child: Row(
        spacing: itemSpacing,
        children: [_ItemColor(_color), Expanded(child: _ItemText(_color, _tapStatusEnum))],
      ),
    );
  }
}

final class _ItemColor extends StatelessWidget {
  final Color _color;

  const _ItemColor(this._color);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardColorDropdownThemeExtension>();
    final double itemColorSize = themeExtension.itemColorSize;

    return Container(width: itemColorSize, height: itemColorSize, color: _color);
  }
}

final class _ItemText extends StatelessWidget {
  final Color _color;
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ItemText(this._color, this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final iconTextButtonThemeExtension =
        context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    return Text(
      _color.hexadecimalFormat,
      style: iconTextButtonThemeExtension.textStyle.withColor(
        MyoroButtonVariantEnum.primary.contentColorBuilder(context, _tapStatusEnum),
      ),
    );
  }
}
