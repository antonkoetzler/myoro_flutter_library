import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_prefix.dart';
part '_widget/_input.dart';

/// Currency [MyoroInput].
class MyoroCurrencyInput extends StatelessWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroCurrencyInputStyle();

  /// Default value for [currency].
  static const currencyDefaultValue = MyoroCurrencyEnum.usd;

  /// Default value for [min].
  static const minDefaultValue = 0.0;

  /// Default value for [decimalPlaces].
  static const decimalPlacesDefaultValue = 0;

  /// Default constructor.
  const MyoroCurrencyInput({
    super.key,
    this.style = styleDefaultValue,
    this.currency = currencyDefaultValue,
    this.min = minDefaultValue,
    this.max,
    this.decimalPlaces = decimalPlacesDefaultValue,
  });

  /// Style.
  final MyoroCurrencyInputStyle style;

  /// Currency.
  final MyoroCurrencyEnum currency;

  /// Min value.
  final double min;

  /// Max value.
  final double? max;

  /// Decimal places.
  final int decimalPlaces;

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(create: (_) => MyoroCurrencyInputViewModel(currency), dispose: (_, v) => v.dispose()),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroCurrencyInputViewModel>();
          final itemBuilder = viewModel.itemBuilder;
          final state = viewModel.state;
          final showingController = state.showingController;
          // final inputDropdownController = state.inputDropdownController;
          // return MyoroSingleInputDropdown<MyoroCurrencyEnum>(
          //   allowDeselection: false,
          //   selectedItem: currency,
          //   request: MyoroCurrencyEnum.values.toSet,
          //   itemBuilder: (i) =>
          //       MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: i.formalName)),
          //   selectedItemBuilder: (i) => i.formalName,
          //   prefix: const _Prefix(),
          // );
          return MyoroDropdown(
            showingController: showingController,
            items: MyoroCurrencyEnum.values.toSet(),
            itemBuilder: itemBuilder,
            child: const _Input(),
          );
        },
      ),
    );
  }
}
