import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_checkbox_widget_showcase_bloc/myoro_checkbox_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCheckbox].
final class MyoroCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return MyoroCheckboxWidgetShowcaseBloc(
          labelTextStyle: MyoroTypographyDesignSystem.instance.italicSmall,
        );
      },
      child: WidgetShowcase(widget: const _Widget(), widgetOptionsBuilder: _widgetOptionsBuilder),
    );
  }

  List<Widget> _widgetOptionsBuilder() {
    return const [_LabelOption(), _LabelTextStyleOption()];
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<MyoroCheckboxWidgetShowcaseBloc, MyoroCheckboxWidgetShowcaseState>(
        builder: (_, MyoroCheckboxWidgetShowcaseState state) {
          return MyoroCheckbox(
            configuration: MyoroCheckboxConfiguration(
              label: state.label,
              labelTextStyle: state.labelTextStyle,
            ),
          );
        },
      ),
    );
  }
}

final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
        label: 'Label text',
        onChanged:
            (String text) =>
                context.resolveBloc<MyoroCheckboxWidgetShowcaseBloc>().add(SetLabelEvent(text)),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;

    return SizedBox(
      width:
          context
              .resolveThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>()
              .labelTextStyleOptionWidth,
      child: MyoroSingularDropdown<TextStyle>(
        configuration: MyoroSingularDropdownConfiguration(
          label: '[MyoroCheckbox.labelTextStyle]',
          allowItemClearing: false,
          menuConfiguration: MyoroMenuConfiguration(
            request: typographyInstance.allTextStyles.toSet,
            itemBuilder: _itemBuilder,
          ),
          selectedItemBuilder: typographyInstance.getTextStyleName,
          initiallySelectedItem: typographyInstance.italicSmall,
          onChanged: (TextStyle? textStyle) => _onChanged(context, textStyle),
        ),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(TextStyle textStyle) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: typographyInstance.getTextStyleName(textStyle),
      ),
    );
  }

  void _onChanged(BuildContext context, TextStyle? textStyle) {
    context.resolveBloc<MyoroCheckboxWidgetShowcaseBloc>().add(SetLabelTextStyleEvent(textStyle!));
  }
}
