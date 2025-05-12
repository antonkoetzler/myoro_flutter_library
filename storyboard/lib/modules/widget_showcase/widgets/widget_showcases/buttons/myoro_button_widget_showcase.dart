import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroButton].
final class MyoroButtonWidgetShowcase extends StatelessWidget {
  const MyoroButtonWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    BorderRadius;
    return BlocProvider(
      create: (_) => MyoroButtonWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          MyoroButtonWidgetShowcaseCursorOption(),
          MyoroButtonWidgetShowcaseBorderRadiusOption(),
          MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
          MyoroButtonWidgetShowcaseBorderBuilderOption(),
          MyoroButtonWidgetShowcaseOnTapDownOption(),
          MyoroButtonWidgetShowcaseOnTapUpOption(),
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
      builder: _builder,
    );
  }

  Widget _builder(BuildContext context, MyoroButtonWidgetShowcaseState state) {
    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        cursor: state.cursor ?? SystemMouseCursors.click,
        borderRadius:
            state.borderRadius != null ? BorderRadius.circular(state.borderRadius!) : null,
        backgroundColorBuilder:
            state.backgroundColorBuilderEnabled
                ? (MyoroTapStatusEnum tapStatusEnum) {
                  return MyoroButtonWidgetShowcaseBloc.backgroundColorBuilder(tapStatusEnum, state);
                }
                : null,
        borderBuilder:
            state.borderBuilderEnabled
                ? (MyoroTapStatusEnum tapStatusEnum) {
                  return MyoroButtonWidgetShowcaseBloc.borderBuilder(context, tapStatusEnum, state);
                }
                : null,
        onTapDown:
            state.onTapDownEnabled ? (_) => MyoroButtonWidgetShowcaseBloc.onTapDown(context) : null,
        onTapUp:
            state.onTapUpEnabled ? (_) => MyoroButtonWidgetShowcaseBloc.onTapUp(context) : null,
      ),
      builder: (_, MyoroTapStatusEnum tapStatusEnum) {
        return _ButtonContent(tapStatusEnum);
      },
    );
  }
}

final class _ButtonContent extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ButtonContent(this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    const areYouSilly = _ButtonContentImage('assets/images/are_you_silly.jpg');
    const happyCat = _ButtonContentImage('assets/images/happy_cat.jpg');
    const snazzyCat = _ButtonContentImage('assets/images/snazzy_cat.jpg');

    return Padding(
      padding: themeExtension.buttonContentPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: [
          Flexible(
            child: switch (_tapStatusEnum) {
              MyoroTapStatusEnum.idle => areYouSilly,
              MyoroTapStatusEnum.hover => happyCat,
              MyoroTapStatusEnum.tap => snazzyCat,
            },
          ),
          Flexible(child: _ButtonContentText(_tapStatusEnum)),
          Flexible(
            child: switch (_tapStatusEnum) {
              MyoroTapStatusEnum.idle => happyCat,
              MyoroTapStatusEnum.hover => areYouSilly,
              MyoroTapStatusEnum.tap => snazzyCat,
            },
          ),
        ],
      ),
    );
  }
}

final class _ButtonContentImage extends StatelessWidget {
  final String _imagePath;

  const _ButtonContentImage(this._imagePath);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    final double size = themeExtension.buttonContentImageSize;

    return Image.asset(_imagePath, width: size, height: size);
  }
}

final class _ButtonContentText extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ButtonContentText(this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();

    return Text(
      'This is a MyoroButton!',
      style: themeExtension.buttonContentTextStyle.withColor(switch (_tapStatusEnum) {
        MyoroTapStatusEnum.idle => themeExtension.buttonContentTextIdleColor,
        MyoroTapStatusEnum.hover => themeExtension.buttonContentTextHoverColor,
        MyoroTapStatusEnum.tap => themeExtension.buttonContentTextTapColor,
      }),
    );
  }
}
