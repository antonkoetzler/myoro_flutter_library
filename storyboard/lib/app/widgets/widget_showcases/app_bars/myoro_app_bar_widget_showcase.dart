import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_app_bar_widget_showcase_bloc/myoro_app_bar_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroAppBar].
final class MyoroAppBarWidgetShowcase extends StatefulWidget {
  const MyoroAppBarWidgetShowcase({super.key});

  @override
  State<MyoroAppBarWidgetShowcase> createState() =>
      _MyoroAppBarWidgetShowcaseState();
}

final class _MyoroAppBarWidgetShowcaseState
    extends State<MyoroAppBarWidgetShowcase> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroAppBarWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_Bordered()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroAppBarWidgetShowcaseBloc,
      MyoroAppBarWidgetShowcaseState
    >(
      builder: (_, MyoroAppBarWidgetShowcaseState state) {
        return MyoroAppBar(
          bordered: state.bordered,
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const _MockAppLogo(),
                    SizedBox(
                      width:
                          context
                              .resolveThemeExtension<
                                MyoroAppBarWidgetShowcaseThemeExtension
                              >()
                              .logoTitleSpacing,
                    ),
                    const Flexible(child: _MockAppTitle()),
                  ],
                ),
                const _MockMenuButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}

final class _MockAppLogo extends StatelessWidget {
  const _MockAppLogo();

  @override
  Widget build(BuildContext context) {
    return Icon(
      context
          .resolveThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>()
          .mockAppLogoIcon,
      size: 30,
    );
  }
}

final class _MockAppTitle extends StatelessWidget {
  const _MockAppTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, World!',
      style:
          context
              .resolveThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>()
              .mockAppTitleTextStyle,
    );
  }
}

final class _MockMenuButton extends StatelessWidget {
  const _MockMenuButton();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        icon:
            context
                .resolveThemeExtension<
                  MyoroAppBarWidgetShowcaseThemeExtension
                >()
                .mockMenuButtonIcon,
        onPressed: () {},
      ),
    );
  }
}

final class _Bordered extends StatelessWidget {
  const _Bordered();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyoroAppBarWidgetShowcaseBloc,
      MyoroAppBarWidgetShowcaseState
    >(
      builder: (_, MyoroAppBarWidgetShowcaseState state) {
        return MyoroCheckbox(
          initialValue: state.bordered,
          label: '[MyoroAppBar.bordered]',
          onChanged:
              (bool value) => context
                  .resolveBloc<MyoroAppBarWidgetShowcaseBloc>()
                  .add(const ToggleBorderedEvent()),
        );
      },
    );
  }
}
