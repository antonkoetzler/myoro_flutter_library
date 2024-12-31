// NOTE:
// 1. [MyoroSingularDropdown] & [MyoroMultiDropdown] should not be one singular [Widget]
//    as one controller for item type of dropdown complicates the logic as if a dropdown
//    that only accepts one item is used, using a [List] of selected items is smelly.
// 2. Given point 1, the shared logic of both [MyoroSingularDropdown] & [MyoroMultiDropdown]
//    made it better to conjoin both [Widget]s into one file.

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

typedef _DisplayingDropdownNotifier = ValueNotifier<bool>;

/// [_MyoroDropdown] that only selects one item at a time.
final class MyoroSingularDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _MyoroDropdown._(key, configuration);
  }
}

/// [_MyoroDropdown] that selects multiple items at a time.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const MyoroMultiDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _MyoroDropdown._(key, configuration);
  }
}

final class _MyoroDropdown<T> extends StatefulWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const _MyoroDropdown._(
    Key? key,
    this.configuration,
  ) : super(key: key);

  @override
  State<_MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

final class _MyoroDropdownState<T> extends State<_MyoroDropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget.configuration;

  /// [GlobalKey] of [_Input] to get it's height to offset [_Dropdown].
  final _inputKey = GlobalKey();

  /// [ValueNotifier] to pass the height of [_Input] to offset [_Dropdown] with it's [Positioned].
  final _inputHeightNotifier = ValueNotifier<double?>(null);

  /// [ValueNotifier] controlling whether or not [_Dropdown] is showing.
  final _displayingDropdownNotifier = _DisplayingDropdownNotifier(false);

  @override
  void dispose() {
    _inputHeightNotifier.dispose();
    _displayingDropdownNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _inputHeightNotifier.value = (_inputKey.currentContext!.findRenderObject() as RenderBox).size.height;
    });

    return MultiProvider(
      providers: [
        Provider.value(value: _configuration),
        InheritedProvider.value(value: _displayingDropdownNotifier),
      ],
      child: ValueListenableBuilder(
        valueListenable: _displayingDropdownNotifier,
        builder: (_, bool displayingDropdown, __) {
          return Stack(
            children: [
              _Input(_inputKey),
              if (displayingDropdown)
                ValueListenableBuilder(
                  valueListenable: _inputHeightNotifier,
                  builder: (_, double? inputHeight, __) {
                    // Prevents "glitchy" looking when the post frame callback hasen't finished.
                    if (inputHeight == null) return const SizedBox.shrink();

                    return Padding(
                      padding: EdgeInsets.only(top: inputHeight + themeExtension.inputDropdownSpacing),
                      child: _Dropdown<T>(),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}

final class _Input extends StatelessWidget {
  const _Input(GlobalKey key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayingDropdownNotifier = context.read<_DisplayingDropdownNotifier>();

    return IntrinsicHeight(
      child: Stack(
        children: [
          // Input which displays the selected item(s).
          MyoroInput(
            configuration: MyoroInputConfiguration(
              inputStyle: context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>().inputStyle,
            ),
          ),

          // Clickable area to activate the dropdown.
          InkWell(
            focusColor: MyoroColorTheme.transparent,
            hoverColor: MyoroColorTheme.transparent,
            splashColor: MyoroColorTheme.transparent,
            highlightColor: MyoroColorTheme.transparent,
            onTap: () => displayingDropdownNotifier.value = !displayingDropdownNotifier.value,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

final class _Dropdown<T> extends StatelessWidget {
  const _Dropdown();

  @override
  Widget build(BuildContext context) {
    final configuration = context.read<MyoroDropdownConfiguration<T>>();

    return MyoroMenu(
      dataConfiguration: configuration.dataConfiguration,
      itemBuilder: configuration.itemBuilder,
    );
  }
}
