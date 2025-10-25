import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_currency_option.dart';
part '_widget/_min_option.dart';
part '_widget/_max_option.dart';
part '_widget/_decimal_places_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroCurrencyInput].
final class MyoroCurrencyInputWidgetShowcaseScreen extends StatelessWidget {
  static const currencyOptionKey = 'currencyOption';

  // Configuration-related options (behavior, data, callbacks, structural properties)
  static const configurationOptions = [_CurrencyOption(), _MinOption(), _MaxOption(), _DecimalPlacesOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroCurrencyInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCurrencyInputWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCurrencyInputTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
