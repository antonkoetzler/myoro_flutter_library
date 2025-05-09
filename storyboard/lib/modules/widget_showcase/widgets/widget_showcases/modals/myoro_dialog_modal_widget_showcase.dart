import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_dialog_modal_widget_showcase_bloc/myoro_dialog_modal_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroDialogModal].
final class MyoroDialogModalWidgetShowcase extends StatelessWidget {
  const MyoroDialogModalWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDialogModalWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _InvertButtonsOption(),
          _ConfirmButtonTextOption(),
          _CancelButtonTextOption(),
          _TextOption(),
          _TextStyleOption(),
          _ChildOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  void _onConfirm(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.success, message: 'Action confirmed'),
      ),
    );
    Navigator.of(context).pop();
  }

  void _onCancel(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.error, message: 'Canceled'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: BlocBuilder<MyoroDialogModalWidgetShowcaseBloc, MyoroDialogModalWidgetShowcaseState>(builder: _builder),
    );
  }

  Widget _builder(BuildContext context, MyoroDialogModalWidgetShowcaseState state) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(context, state)),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Click to launch the modal.'),
      ),
    );
  }

  void _onTapUp(BuildContext context, MyoroDialogModalWidgetShowcaseState state) {
    MyoroDialogModal.show(
      context,
      dialogModalConfiguration: MyoroDialogModalConfiguration(
        invertButtons: state.invertButtons,
        confirmButtonText: state.confirmButtonText,
        cancelButtonText: state.cancelButtonText,
        onConfirm: () => _onConfirm(context),
        onCancel: () => _onCancel(context),
        text: state.text,
        textStyle: state.textStyle,
        child: state.childEnabled ? const _Child() : null,
      ),
    );
  }
}

final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: context.resolveThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>().childBorderRadius,
      child: IntrinsicWidth(child: Image.asset('assets/images/are_you_silly.jpg')),
    );
  }
}

final class _InvertButtonsOption extends StatelessWidget {
  const _InvertButtonsOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroDialogModal._invertButtons]',
      initialValue: bloc.state.invertButtons,
      onChanged: (bool value) => bloc.add(SetInvertButtonsEvent(value)),
    );
  }
}

final class _ConfirmButtonTextOption extends StatelessWidget {
  const _ConfirmButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>();

    return _Input(
      label: '[MyoroDialogModal.confirmButtonText]',
      onChanged: (String text) => bloc.add(SetConfirmButtonTextEvent(text.isNotEmpty ? text : null)),
      checkboxOnChanged:
          (bool enabled, String text) =>
              bloc.add(SetConfirmButtonTextEvent((enabled && text.isNotEmpty) ? text : null)),
    );
  }
}

final class _CancelButtonTextOption extends StatelessWidget {
  const _CancelButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>();

    return _Input(
      label: '[MyoroDialogModal._cancelButtonText]',
      onChanged: (String text) => bloc.add(SetCancelButtonTextEvent(text.isNotEmpty ? text : null)),
      checkboxOnChanged:
          (bool enabled, String text) => bloc.add(SetCancelButtonTextEvent((enabled && text.isNotEmpty) ? text : null)),
    );
  }
}

final class _TextOption extends StatefulWidget {
  const _TextOption();

  @override
  State<_TextOption> createState() => _TextOptionState();
}

final class _TextOptionState extends State<_TextOption> {
  late final _bloc = context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>();
  late final _controller = TextEditingController(text: _bloc.state.text);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroDialogModalWidgetShowcaseBloc, MyoroDialogModalWidgetShowcaseState>(
      builder: (_, MyoroDialogModalWidgetShowcaseState state) {
        return _Input(
          label: '[MyoroDialogModal.text]',
          enabled: state.textEnabled,
          onChanged: (String text) => _bloc.add(SetTextEvent(text.isNotEmpty ? text : null)),
          checkboxOnChanged:
              (bool enabled, String text) => _bloc.add(SetTextEvent((enabled && text.isNotEmpty) ? text : null)),
          controller: _controller,
        );
      },
    );
  }
}

final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroDialogModal.textStyle]',
        menuConfiguration: MyoroMenuConfiguration(
          request: typographyInstance.allTextStyles.toSet,
          itemBuilder: (textStyle) => _itemBuilder(typographyInstance, textStyle),
        ),
        selectedItemBuilder: typographyInstance.getTextStyleName,
        onChanged: (textStyle) => _onChanged(context, textStyle),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(MyoroTypographyDesignSystem typographyInstance, TextStyle textStyle) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: typographyInstance.getTextStyleName(textStyle)),
    );
  }

  void _onChanged(BuildContext context, TextStyle? textStyle) {
    final bloc = context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>();
    bloc.add(SetTextStyleEvent(textStyle));
  }
}

final class _Input extends StatelessWidget {
  final String label;
  final bool enabled;
  final MyoroInputOnChanged onChanged;
  final MyoroInputCheckboxOnChanged checkboxOnChanged;
  final TextEditingController? controller;

  const _Input({
    required this.label,
    this.enabled = false,
    required this.onChanged,
    required this.checkboxOnChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          label: label,
          inputStyle: context.resolveThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>().inputStyle,
          onChanged: onChanged,
          checkboxOnChanged: checkboxOnChanged,
          enabled: enabled,
          controller: controller,
        ),
      ),
    );
  }
}

final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroDialogModalWidgetShowcaseBloc, MyoroDialogModalWidgetShowcaseState>(
      builder: (_, MyoroDialogModalWidgetShowcaseState state) {
        return MyoroCheckbox(
          label: '[MyoroDialogModal._child] not null?',
          initialValue: state.childEnabled,
          onChanged:
              (bool value) => context.resolveBloc<MyoroDialogModalWidgetShowcaseBloc>().add(SetChildEvent(value)),
        );
      },
    );
  }
}
