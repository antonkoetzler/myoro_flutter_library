import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_checkbox_widget_showcase_bloc/myoro_checkbox_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCheckbox].
final class MyoroCheckboxWidgetShowcase extends StatelessWidget {
  const MyoroCheckboxWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCheckboxWidgetShowcaseBloc(
        labelTextStyle: MyoroTypographyTheme.instance.italicSmall,
      ),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _LabelOption(),
          _LabelTextStyleOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<MyoroCheckboxWidgetShowcaseBloc,
          MyoroCheckboxWidgetShowcaseState>(
        builder: (_, MyoroCheckboxWidgetShowcaseState state) {
          return MyoroCheckbox(
            label: state.label,
            labelTextStyle: state.labelTextStyle,
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
        onChanged: (String text) =>
            context.resolveBloc<MyoroCheckboxWidgetShowcaseBloc>().add(
                  SetLabelEvent(text),
                ),
      ),
    );
  }
}

final class _LabelTextStyleOption extends StatefulWidget {
  const _LabelTextStyleOption();

  @override
  State<_LabelTextStyleOption> createState() => _LabelTextStyleOptionState();
}

final class _LabelTextStyleOptionState extends State<_LabelTextStyleOption> {
  final _typographyTheme = MyoroTypographyTheme.instance;
  late final _controller =
      MyoroSingularDropdownController<TextStyle>(_typographyTheme.italicSmall);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final textStyles = _typographyTheme.allTextStyles;

    return SizedBox(
      width: context
          .resolveThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>()
          .labelTextStyleOptionWidth,
      child: MyoroSingularDropdown<TextStyle>(
        configuration: MyoroDropdownConfiguration(
          label: '[MyoroCheckbox.labelTextStyle]',
          allowItemClearing: false,
          dataConfiguration: MyoroDataConfiguration(staticItems: textStyles),
          itemBuilder: (TextStyle textStyle) =>
              MyoroMenuItem(text: _typographyTheme.getTextStyleName(textStyle)),
          itemLabelBuilder: _typographyTheme.getTextStyleName,
        ),
        onChanged: (TextStyle? textStyle) => context
            .resolveBloc<MyoroCheckboxWidgetShowcaseBloc>()
            .add(SetLabelTextStyleEvent(textStyle!)),
        controller: _controller,
      ),
    );
  }
}
