import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_snack_bar_widget_showcase_bloc/myoro_snack_bar_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSnackBar].
final class MyoroSnackBarWidgetShowcase extends StatelessWidget {
  const MyoroSnackBarWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroSnackBarWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _SnackBarTypeOption(),
          _ShowCloseButtonOption(),
          _MessageOption(),
          _ChildOption(),
        ],
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(
            borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
            onTapUp: (_) => _onTapUp(context),
          ),
          textConfiguration: const MyoroIconTextButtonTextConfiguration(
            text: 'Click to launch the snack bar.',
          ),
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    final state = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>().state;

    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: state.snackBarType,
          showCloseButton: state.showCloseButton,
          message: state.message,
          child: state.childEnabled ? const _Child() : null,
        ),
      ),
    );
  }
}

final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>();

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(
            borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
            onTapUp: (_) {},
          ),
          iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.childIcon),
          textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Buttonception O_O'),
        ),
      ),
    );
  }
}

final class _SnackBarTypeOption extends StatefulWidget {
  const _SnackBarTypeOption();

  @override
  State<_SnackBarTypeOption> createState() => _SnackBarTypeOptionState();
}

final class _SnackBarTypeOptionState extends State<_SnackBarTypeOption> {
  late final MyoroSnackBarWidgetShowcaseBloc _bloc;
  final _controller = MyoroSingularDropdownController<MyoroSnackBarTypeEnum>();

  @override
  void initState() {
    super.initState();
    _bloc = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<MyoroSnackBarTypeEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: '[MyoroSnackBar.snackBarType]',
        menuConfiguration: MyoroMenuConfiguration(
          request: MyoroSnackBarTypeEnum.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _getSnackbarTypeName,
        allowItemClearing: false,
        initiallySelectedItem: _bloc.state.snackBarType,
        onChanged: (MyoroSnackBarTypeEnum? selectedItem) => _onChanged(selectedItem!),
        controller: _controller,
      ),
    );
  }

  String _getSnackbarTypeName(MyoroSnackBarTypeEnum snackBarType) {
    return switch (snackBarType) {
      MyoroSnackBarTypeEnum.standard => 'Standard',
      MyoroSnackBarTypeEnum.attention => 'Attention',
      MyoroSnackBarTypeEnum.success => 'Success',
      MyoroSnackBarTypeEnum.error => 'Error',
    };
  }

  MyoroMenuItem _itemBuilder(MyoroSnackBarTypeEnum snackBarType) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _getSnackbarTypeName(snackBarType),
      ),
    );
  }

  void _onChanged(MyoroSnackBarTypeEnum snackBarTypes) {
    _bloc.add(SetSnackBarTypeEvent(snackBarTypes));
  }
}

final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  void _onChanged(MyoroSnackBarWidgetShowcaseBloc bloc, bool value) {
    bloc.add(SetShowCloseButtonEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: '[MyoroSnackBar.showCloseButton]',
        initialValue: bloc.state.showCloseButton,
        onChanged: (bool value) => _onChanged(bloc, value),
      ),
    );
  }
}

final class _MessageOption extends StatefulWidget {
  const _MessageOption();

  @override
  State<_MessageOption> createState() => _MessageOptionState();
}

final class _MessageOptionState extends State<_MessageOption> {
  late final _bloc = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>();
  late final _controller = TextEditingController(text: _bloc.state.message);

  void _listener(BuildContext context, MyoroSnackBarWidgetShowcaseState state) {
    if (state.childEnabled) {
      _controller.clear();
    }
  }

  void _onChanged(_) {
    _bloc.add(SetMessageEvent(_controller.text));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyoroSnackBarWidgetShowcaseBloc, MyoroSnackBarWidgetShowcaseState>(
      listener: _listener,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          label: '[MyoroSnackBar.message]',
          inputStyle:
              context.resolveThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>().inputStyle,
          controller: _controller,
          onChanged: _onChanged,
        ),
      ),
    );
  }
}

final class _ChildOption extends StatelessWidget {
  const _ChildOption();

  void _onChanged(BuildContext context, bool value) {
    context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>().add(SetChildEnabledEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroSnackBarWidgetShowcaseBloc, MyoroSnackBarWidgetShowcaseState>(
      builder: (_, MyoroSnackBarWidgetShowcaseState state) {
        return MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: '[MyoroSnackBar.child] enabled?',
            initialValue: state.childEnabled,
            onChanged: (bool value) => _onChanged(context, value),
          ),
        );
      },
    );
  }
}
