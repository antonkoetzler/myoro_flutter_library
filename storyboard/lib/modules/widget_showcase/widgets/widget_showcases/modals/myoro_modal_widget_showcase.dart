import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_modal_widget_showcase_bloc/myoro_modal_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroModal].
final class MyoroModalWidgetShowcase extends StatelessWidget {
  const MyoroModalWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroModalWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [_BarrierDismissableOption(), _ConstraintsOption(), _TitleOption(), _ShowCloseButtonOption()],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: BlocBuilder<MyoroModalWidgetShowcaseBloc, MyoroModalWidgetShowcaseState>(builder: _builder),
    );
  }

  Widget _builder(BuildContext context, MyoroModalWidgetShowcaseState state) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
          onTapUp: (_) => _onTapUp(context, state),
        ),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Click to launch the modal.'),
      ),
    );
  }

  void _onTapUp(BuildContext context, MyoroModalWidgetShowcaseState state) {
    final constraints = BoxConstraints(
      minWidth: state.minWidth ?? 0,
      maxWidth: state.maxWidth ?? double.infinity,
      minHeight: state.minHeight ?? 0,
      maxHeight: state.maxHeight ?? double.infinity,
    );

    MyoroModal.show(
      context,
      configuration: MyoroModalConfiguration(
        barrierDismissable: state.barrierDismissable,
        constraints: state.constraintsProvided ? constraints : null,
        onClosed:
            () => context.showSnackBar(
              snackBar: const MyoroSnackBar(MyoroSnackBarConfiguration(message: 'Modal closed!')),
            ),
        title: state.title,
        showCloseButton: state.showCloseButton,
      ),
      child: const SizedBox.shrink(),
    );
  }
}

final class _BarrierDismissableOption extends StatelessWidget {
  const _BarrierDismissableOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroModalWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Barrier dismissable?',
      initialValue: bloc.state.barrierDismissable,
      onChanged: (bool value) => bloc.add(SetBarrierDismissableEvent(value)),
    );
  }
}

final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>();
    final spacing = themeExtension.spacing;
    final bloc = context.resolveBloc<MyoroModalWidgetShowcaseBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: [
        Text('Constraints', style: themeExtension.headerTextStyle),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min width',
                onChanged: (double value) => bloc.add(SetMinWidthEvent(value)),
                checkboxOnChanged: (bool enabled, double value) => bloc.add(SetMinWidthEvent(enabled ? value : null)),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max width',
                onChanged: (double value) => bloc.add(SetMaxWidthEvent(value)),
                checkboxOnChanged: (bool enabled, double value) => bloc.add(SetMaxWidthEvent(enabled ? value : null)),
              ),
            ),
          ],
        ),
        Row(
          spacing: spacing,
          children: [
            Expanded(
              child: _NumberInput(
                label: 'Min height',
                onChanged: (double value) => bloc.add(SetMinHeightEvent(value)),
                checkboxOnChanged: (bool enabled, double value) => bloc.add(SetMinHeightEvent(enabled ? value : null)),
              ),
            ),
            Expanded(
              child: _NumberInput(
                label: 'Max height',
                onChanged: (double value) => bloc.add(SetMaxHeightEvent(value)),
                checkboxOnChanged: (bool enabled, double value) => bloc.add(SetMaxHeightEvent(enabled ? value : null)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroModalWidgetShowcaseBloc>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Title',
        inputStyle: context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>().inputStyle,
        onChanged: (String text) => bloc.add(SetTitleEvent(text.isNotEmpty ? text : null)),
        checkboxOnChanged:
            (bool enabled, String text) => bloc.add(SetTitleEvent((enabled && text.isNotEmpty) ? text : null)),
      ),
    );
  }
}

final class _NumberInput extends StatelessWidget {
  final String label;
  final void Function(double value) onChanged;
  final void Function(bool enabled, double value) checkboxOnChanged;

  const _NumberInput({required this.label, required this.onChanged, required this.checkboxOnChanged});

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 500,
      configuration: MyoroInputConfiguration(
        label: label,
        inputStyle: context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>().inputStyle,
        enabled: false,
        onChanged: (String text) => onChanged.call(double.parse(text)),
        checkboxOnChanged: (bool enabled, String text) => checkboxOnChanged.call(enabled, double.parse(text)),
      ),
    );
  }
}

final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroModalWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'Show close button?',
      initialValue: bloc.state.showCloseButton,
      onChanged: (bool value) => bloc.add(SetShowCloseButtonEvent(value)),
    );
  }
}
