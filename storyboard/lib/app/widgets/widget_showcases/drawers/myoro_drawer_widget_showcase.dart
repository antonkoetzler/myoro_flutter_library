import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_drawer_widget_showcase_bloc/myoro_drawer_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroDrawer].
final class MyoroDrawerWidgetShowcase extends StatelessWidget {
  const MyoroDrawerWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDrawerWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _TitleOption(),
          _TitleTextStyleOption(),
          _ShowCloseButtonOption(),
          _BarrierDismissableOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onPressed(BuildContext context) {
    final state = context.resolveBloc<MyoroDrawerWidgetShowcaseBloc>().state;

    context.openDrawer(
      drawer: MyoroDrawer(
        title: state.title,
        titleTextStyle: state.titleTextStyle,
        showCloseButton: state.showCloseButton,
        barrierDismissable: state.barrierDismissable,
        child: const SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: MyoroHoverButtonConfiguration(
          bordered:
              context
                  .resolveThemeExtension<
                    MyoroDrawerWidgetShowcaseThemeExtension
                  >()
                  .buttonBordered,
        ),
        text: 'Click to launch the drawer.',
        onPressed: () => _onPressed(context),
      ),
    );
  }
}

final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  void _checkboxOnChanged(
    MyoroDrawerWidgetShowcaseBloc bloc,
    bool enabled,
    String text,
  ) {
    bloc.add(SetTitleEvent(enabled ? text : null));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDrawerWidgetShowcaseBloc>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: '[MyoroDrawer.title]',
        inputStyle:
            context
                .resolveThemeExtension<
                  MyoroDrawerWidgetShowcaseThemeExtension
                >()
                .inputStyle,
        checkboxOnChanged:
            (bool enabled, String text) =>
                _checkboxOnChanged(bloc, enabled, text),
        onChanged: (String text) => bloc.add(SetTitleEvent(text)),
      ),
    );
  }
}

final class _TitleTextStyleOption extends StatelessWidget {
  const _TitleTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDrawerWidgetShowcaseBloc>();
    final typographyInstance = MyoroTypographyDesignSystem.instance;

    return SizedBox(
      width: 210,
      child: MyoroSingularDropdown<TextStyle>(
        configuration: MyoroSingularDropdownConfiguration(
          label: '[MyoroDrawer.titleTextStyle]',
          enabled: false,
          menuConfiguration: MyoroMenuConfiguration(
            request: typographyInstance.allTextStyles.toSet,
            itemBuilder:
                (textStyle) => _itemBuilder(typographyInstance, textStyle),
          ),
          selectedItemBuilder: typographyInstance.getTextStyleName,
          onChanged: (textStyle) => _onChanged(bloc, textStyle),
          checkboxOnChanged:
              (enabled, textStyle) =>
                  _checkboxOnChanged(bloc, enabled, textStyle),
        ),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(
    MyoroTypographyDesignSystem typographyInstance,
    TextStyle textStyle,
  ) {
    return MyoroMenuItem(text: typographyInstance.getTextStyleName(textStyle));
  }

  void _onChanged(MyoroDrawerWidgetShowcaseBloc bloc, TextStyle? textStyle) {
    bloc.add(SetTitleTextStyleEvent(textStyle));
  }

  void _checkboxOnChanged(
    MyoroDrawerWidgetShowcaseBloc bloc,
    bool enabled,
    TextStyle? textStyle,
  ) {
    bloc.add(SetTitleTextStyleEvent(enabled ? textStyle : null));
  }
}

final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDrawerWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDrawer.showCloseButton]',
      initialValue: bloc.state.showCloseButton,
      onChanged: (bool value) => bloc.add(SetShowCloseButtonEvent(value)),
    );
  }
}

final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDrawerWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDrawer.barrierDismissable]',
      initialValue: bloc.state.barrierDismissable,
      onChanged: (bool value) => bloc.add(SetBarrierDismissableEvent(value)),
    );
  }
}
