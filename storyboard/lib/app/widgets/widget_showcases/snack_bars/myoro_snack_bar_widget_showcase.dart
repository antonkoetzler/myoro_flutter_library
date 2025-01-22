import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_snack_bar_widget_showcase_bloc/myoro_snack_bar_widget_showcase_bloc.dart';
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

  void _onPressed(BuildContext context) {
    final state = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>().state;

    context.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType: state.snackBarType,
        showCloseButton: state.showCloseButton,
        message: state.message,
        child: state.childEnabled ? const _Child() : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final configuration = MyoroHoverButtonConfiguration(
      bordered: context.resolveThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>().widgetBordered,
    );

    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: configuration,
        text: 'Click to launch the snack bar.',
        onPressed: () => _onPressed(context),
      ),
    );
  }
}

final class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        icon: context.resolveThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>().childIcon,
        text: 'Buttonception O_O',
        configuration: const MyoroHoverButtonConfiguration(bordered: true),
        onPressed: () {},
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
  late final _controller = MyoroSingularDropdownController<MyoroSnackBarTypeEnum>(_bloc.state.snackBarType);

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
      text: _getSnackbarTypeName(snackBarType),
    );
  }

  void _onChanged(MyoroSnackBarTypeEnum snackBarTypes) {
    _bloc.add(
      SetSnackBarTypeEvent(
        snackBarTypes,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _bloc = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataConfiguration = MyoroDataConfiguration(staticItems: MyoroSnackBarTypeEnum.values);

    return MyoroSingularDropdown<MyoroSnackBarTypeEnum>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroSnackBar.snackBarType]',
        dataConfiguration: dataConfiguration,
        itemBuilder: _itemBuilder,
        itemLabelBuilder: _getSnackbarTypeName,
        allowItemClearing: false,
      ),
      onChanged: (MyoroSnackBarTypeEnum? selectedItem) => _onChanged(selectedItem!),
    );
  }
}

final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  void _onChanged(MyoroSnackBarWidgetShowcaseBloc bloc, bool value) {
    bloc.add(
      SetShowCloseButtonEvent(
        value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroSnackBar.showCloseButton]',
      initialValue: bloc.state.showCloseButton,
      onChanged: (bool value) => _onChanged(bloc, value),
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
    _bloc.add(
      SetMessageEvent(
        _controller.text,
      ),
    );
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
          inputStyle: context.resolveThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>().inputStyle,
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
    context.resolveBloc<MyoroSnackBarWidgetShowcaseBloc>().add(
          SetChildEnabledEvent(
            value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroSnackBarWidgetShowcaseBloc, MyoroSnackBarWidgetShowcaseState>(
      builder: (_, MyoroSnackBarWidgetShowcaseState state) {
        return MyoroCheckbox(
          label: '[MyoroSnackBar.child] enabled?',
          initialValue: state.childEnabled,
          onChanged: (bool value) => _onChanged(context, value),
        );
      },
    );
  }
}
