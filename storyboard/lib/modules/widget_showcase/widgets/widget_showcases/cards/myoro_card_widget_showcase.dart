import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_card_widget_showcase_bloc/myoro_card_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCard].
final class MyoroCardWidgetShowcase extends StatelessWidget {
  const MyoroCardWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroCardWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _TitleOption(),
          _TitleTextStyleOption(),
          _PaddingOption(),
          _WidthOption(),
          _HeightOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroCardWidgetShowcaseBloc,
      MyoroCardWidgetShowcaseState
    >(
      builder: (_, MyoroCardWidgetShowcaseState state) {
        return IntrinsicHeight(
          child: MyoroCard(
            title: state.title.isEmpty ? null : state.title,
            titleTextStyle: state.titleTextStyle,
            padding:
                state.padding != null ? EdgeInsets.all(state.padding!) : null,
            width: state.width.$1 ? state.width.$2 : null,
            height: state.height.$1 ? state.height.$2 : null,
            child: const Text('This is a [MyoroCard]!'),
          ),
        );
      },
    );
  }
}

final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  void _onChanged(BuildContext context, String text) {
    context.resolveBloc<MyoroCardWidgetShowcaseBloc>().add(SetTitleEvent(text));
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroCardWidgetShowcaseThemeExtension>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        inputStyle: themeExtension.inputStyle,
        textAlign: themeExtension.titleOptionTextAlign,
        label: '[MyoroCard.title]',
        onChanged: (String text) => _onChanged(context, text),
      ),
    );
  }
}

final class _TitleTextStyleOption extends StatelessWidget {
  const _TitleTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroCardWidgetShowcaseThemeExtension>();

    return MyoroSingularDropdown<(String, TextStyle)>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroCard.titleTextStyle]',
        menuConfiguration: MyoroMenuConfiguration(
          request: () => themeExtension.titleTextStyleOptionTextStyles,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: (textStyle) => textStyle.$1,
        onChanged: (textStyle) => _onChanged(context, textStyle),
      ),
    );
  }

  MyoroMenuItem _itemBuilder((String, TextStyle) textStyle) {
    return MyoroMenuItem(text: textStyle.$1);
  }

  void _onChanged(BuildContext context, (String, TextStyle)? textStyle) {
    final bloc = context.resolveBloc<MyoroCardWidgetShowcaseBloc>();
    final themeExtension =
        context.resolveThemeExtension<MyoroCardThemeExtension>();

    bloc.add(
      SetTitleTextStyleEvent(
        textStyle != null ? textStyle.$2 : themeExtension.textStyle,
      ),
    );
  }
}

final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      label: '[MyoroCard.padding]',
      initialValue:
          context.resolveThemeExtension<MyoroCardThemeExtension>().padding.top,
      maxValue: 50,
      onChanged: (double value) {
        context.resolveBloc<MyoroCardWidgetShowcaseBloc>().add(
          SetPaddingEvent(value),
        );
      },
    );
  }
}

final class _WidthOption extends StatefulWidget {
  const _WidthOption();

  @override
  State<_WidthOption> createState() => _WidthOptionState();
}

final class _WidthOptionState extends State<_WidthOption> {
  late final _bloc = context.resolveBloc<MyoroCardWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.width.$2.toStringAsFixed(2),
  );

  void _onChanged(bool enabled, String text) {
    _bloc.add(SetWidthEvent((enabled, double.parse(text))));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        controller: _controller,
        inputStyle:
            context
                .resolveThemeExtension<MyoroCardWidgetShowcaseThemeExtension>()
                .inputStyle,
        label: '[MyoroCard.width]',
        onChanged: (String text) => _onChanged(true, text),
        checkboxOnChanged:
            (bool enabled, String text) => _onChanged(enabled, text),
      ),
    );
  }
}

final class _HeightOption extends StatefulWidget {
  const _HeightOption();

  @override
  State<_HeightOption> createState() => _HeightOptionState();
}

final class _HeightOptionState extends State<_HeightOption> {
  late final _bloc = context.resolveBloc<MyoroCardWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.width.$2.toStringAsFixed(2),
  );

  void _onChanged(bool enabled, String text) {
    _bloc.add(SetHeightEvent((enabled, double.parse(text))));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        controller: _controller,
        inputStyle:
            context
                .resolveThemeExtension<MyoroCardWidgetShowcaseThemeExtension>()
                .inputStyle,
        label: '[MyoroCard.height]',
        onChanged: (String text) => _onChanged(true, text),
        checkboxOnChanged:
            (bool enabled, String text) => _onChanged(enabled, text),
      ),
    );
  }
}
