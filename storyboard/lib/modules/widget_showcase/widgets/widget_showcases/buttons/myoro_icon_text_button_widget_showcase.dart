import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_icon_text_button_widget_showcase_bloc/myoro_icon_text_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroIconTextButton].
///
/// TODO: Needs to be tested.
final class MyoroIconTextButtonWidgetShowcase extends StatelessWidget {
  const MyoroIconTextButtonWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MyoroButtonWidgetShowcaseBloc()),
        BlocProvider(create: (_) => MyoroIconTextButtonWidgetShowcaseBloc()),
      ],
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          MyoroButtonWidgetShowcaseCursorOption(),
          MyoroButtonWidgetShowcaseBorderRadiusOption(),
          MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
          MyoroButtonWidgetShowcaseBorderBuilderOption(),
          MyoroButtonWidgetShowcaseOnTapDownOption(),
          MyoroButtonWidgetShowcaseOnTapUpOption(),
          _InvertOption(),
          _SpacingOption(),
          _PaddingOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroButtonWidgetShowcaseBloc, MyoroButtonWidgetShowcaseState>(
      builder: (_, MyoroButtonWidgetShowcaseState buttonState) {
        return BlocBuilder<
          MyoroIconTextButtonWidgetShowcaseBloc,
          MyoroIconTextButtonWidgetShowcaseState
        >(
          builder: (_, MyoroIconTextButtonWidgetShowcaseState iconTextButtonState) {
            return MyoroIconTextButton(
              configuration: MyoroIconTextButtonConfiguration(
                cursor: buttonState.cursor ?? SystemMouseCursors.click,
                borderRadius:
                    buttonState.borderRadius != null
                        ? BorderRadius.circular(buttonState.borderRadius!)
                        : null,
                backgroundColorBuilder:
                    buttonState.backgroundColorBuilderEnabled
                        ? (MyoroTapStatusEnum tapStatusEnum) {
                          return MyoroButtonWidgetShowcaseBloc.backgroundColorBuilder(
                            tapStatusEnum,
                            buttonState,
                          );
                        }
                        : null,
                borderBuilder:
                    buttonState.borderBuilderEnabled
                        ? (MyoroTapStatusEnum tapStatusEnum) {
                          return MyoroButtonWidgetShowcaseBloc.borderBuilder(
                            context,
                            tapStatusEnum,
                            buttonState,
                          );
                        }
                        : null,
                onTapDown:
                    buttonState.onTapDownEnabled
                        ? (_) => MyoroButtonWidgetShowcaseBloc.onTapDown(context)
                        : null,
                onTapUp:
                    buttonState.onTapUpEnabled
                        ? (_) => MyoroButtonWidgetShowcaseBloc.onTapUp(context)
                        : null,
                invert: iconTextButtonState.invert,
                spacing: iconTextButtonState.spacing,
                padding: iconTextButtonState.padding,
                contentColorBuilder:
                    iconTextButtonState.contentColorBuilderEnabled
                        ? (MyoroTapStatusEnum tapStatusEnum) {
                          return _contentColorBuilder(tapStatusEnum, iconTextButtonState);
                        }
                        : null,
                iconConfiguration:
                    iconTextButtonState.icon != null
                        ? MyoroIconTextButtonIconConfiguration(
                          icon: iconTextButtonState.icon!,
                          size: iconTextButtonState.iconSize,
                        )
                        : null,
                textConfiguration:
                    iconTextButtonState.text.isNotEmpty
                        ? MyoroIconTextButtonTextConfiguration(
                          text: iconTextButtonState.text,
                          maxLines: iconTextButtonState.textMaxLines,
                          overflow: iconTextButtonState.textOverflow,
                          alignment: iconTextButtonState.textAlignment,
                          style: iconTextButtonState.textStyle,
                        )
                        : null,
              ),
            );
          },
        );
      },
    );
  }

  Color _contentColorBuilder(
    MyoroTapStatusEnum tapStatusEnum,
    MyoroIconTextButtonWidgetShowcaseState iconTextButtonState,
  ) {
    const Color transparent = MyoroColorDesignSystem.transparent;

    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => iconTextButtonState.idleContentColor ?? transparent,
      MyoroTapStatusEnum.hover => iconTextButtonState.hoverContentColor ?? transparent,
      MyoroTapStatusEnum.tap => iconTextButtonState.tapContentColor ?? transparent,
    };
  }
}

final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Invert icon and text.',
      onChanged: (bool value) => _onChanged(bloc, value),
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetInvertEvent(value));
  }
}

final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextButtonWidgetShowcaseBloc>();

    return MyoroSlider(
      label: 'Spacing between icon and text.',
      onChanged: (double value) => _onChanged(bloc, value),
      footerIndicatorTextBuilder: _footerIndicatorTextBuilder,
    );
  }

  void _onChanged(MyoroIconTextButtonWidgetShowcaseBloc bloc, double value) {
    bloc.add(SetSpacingEvent(value));
  }

  String _footerIndicatorTextBuilder(double value) {
    return value.toString();
  }
}

final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    you are here.
    return PaddingWidgetShowcaseOption();
  }
}
