import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_radio_widget_showcase_bloc/myoro_radio_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroRadio].
final class MyoroRadioWidgetShowcase extends StatelessWidget {
  const MyoroRadioWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroRadioWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_LabelOption(), _LabelTextStyleOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onChanged(BuildContext context, bool value) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType:
            value ? MyoroSnackBarTypeEnum.success : MyoroSnackBarTypeEnum.error,
        message: 'Radio ${value ? 'enabled' : 'disabled'}!',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroRadioWidgetShowcaseBloc,
      MyoroRadioWidgetShowcaseState
    >(
      builder: (_, MyoroRadioWidgetShowcaseState state) {
        return MyoroRadio(
          label: state.label,
          labelTextStyle: state.labelTextStyle,
          onChanged: (bool value) => _onChanged(context, value),
        );
      },
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  void _onChanged(BuildContext context, String text) {
    context.resolveBloc<MyoroRadioWidgetShowcaseBloc>().add(
      SetLabelEvent(text.isNotEmpty ? text : null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[MyoroRadio.label]',
        inputStyle:
            context
                .resolveThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>()
                .inputStyle,
        onChanged: (String text) => _onChanged(context, text),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typography = MyoroTypographyDesignSystem.instance;
    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroRadio.labelTextStyle]',
        menuConfiguration: MyoroMenuConfiguration(
          request: typography.allTextStyles.toSet,
          itemBuilder:
              (TextStyle textStyle) => _itemBuilder(typography, textStyle),
        ),
        selectedItemBuilder: typography.getTextStyleName,
        onChanged: (TextStyle? textStyle) => _onChanged(context, textStyle),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(
    MyoroTypographyDesignSystem typography,
    TextStyle textStyle,
  ) {
    return MyoroMenuItem(text: typography.getTextStyleName(textStyle));
  }

  void _onChanged(BuildContext context, TextStyle? textStyle) {
    context.resolveBloc<MyoroRadioWidgetShowcaseBloc>().add(
      SetLabelTextStyleEvent(textStyle),
    );
  }
}
