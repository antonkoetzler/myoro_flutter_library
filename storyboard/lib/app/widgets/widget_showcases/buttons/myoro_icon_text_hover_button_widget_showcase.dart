import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_icon_text_hover_button_widget_showcase_bloc/myoro_icon_text_hover_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroIconTextHoverButton].
final class MyoroIconTextHoverButtonWidgetShowcase extends StatelessWidget {
  const MyoroIconTextHoverButtonWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroIconTextHoverButtonWidgetShowcaseBloc(),
      child: const WidgetShowcase(
        widget: _Widget(),
        widgetOptions: [
          _IconOption(),
          _IconSizeOption(),
          _TextOption(),
          _TextStyleOption(),
          _TextAlignOption(),
          _PaddingOption(),
          _MainAxisAlignmentOption(),
          _OnPressedEnabledOption(),
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
      MyoroIconTextHoverButtonWidgetShowcaseBloc,
      MyoroIconTextHoverButtonWidgetShowcaseState
    >(
      builder: (_, MyoroIconTextHoverButtonWidgetShowcaseState state) {
        return MyoroIconTextHoverButton(
          configuration: const MyoroHoverButtonConfiguration(bordered: true),
          icon: state.icon,
          iconSize: state.iconSize,
          text: state.text,
          textStyle: state.textStyle,
          textAlign: state.textAlign,
          padding:
              state.padding != null ? EdgeInsets.all(state.padding!) : null,
          mainAxisAlignment: state.mainAxisAlignment,
          onPressed: state.onPressedEnabled ? () {} : null,
        );
      },
    );
  }
}

final class _IconOption extends StatelessWidget {
  const _IconOption();

  @override
  Widget build(BuildContext context) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    return MyoroSingularDropdown<IconData>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Icon',
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestIcons.toSet,
          itemBuilder: _menuItemBuilder,
        ),
        selectedItemBuilder: _itemLabelBuilder,
        initiallySelectedItem: bloc.state.icon,
        onChanged: (IconData? icon) => bloc.add(SetIconEvent(icon)),
      ),
    );
  }

  String _itemLabelBuilder(IconData icon) {
    return 'kMyoroTestIcons[${kMyoroTestIcons.indexOf(icon).toString()}]';
  }

  MyoroMenuItem _menuItemBuilder(IconData icon) {
    return MyoroMenuItem(icon: icon, text: _itemLabelBuilder(icon));
  }
}

final class _IconSizeOption extends StatefulWidget {
  const _IconSizeOption();

  @override
  State<_IconSizeOption> createState() => _IconSizeOptionState();
}

final class _IconSizeOptionState extends State<_IconSizeOption> {
  late final _bloc =
      context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.iconSize?.toString(),
  );

  void _setIconSizeEvent([String? text]) =>
      _bloc.add(SetIconSizeEvent(text != null ? double.parse(text) : null));
  void _controllerListener() =>
      _setIconSizeEvent(_controller.text.isEmpty ? null : _controller.text);

  @override
  void initState() {
    super.initState();
    _controller.addListener(_controllerListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 200,
      configuration: MyoroInputConfiguration(
        label: 'Icon size',
        controller: _controller,
      ),
    );
  }
}

final class _TextOption extends StatefulWidget {
  const _TextOption();

  @override
  State<_TextOption> createState() => _TextOptionState();
}

final class _TextOptionState extends State<_TextOption> {
  late final _bloc =
      context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = TextEditingController(text: _bloc.state.text);

  void _setTextEvent([String text = '']) => _bloc.add(SetTextEvent(text));
  void _controllerListener() => _setTextEvent(_controller.text);

  @override
  void initState() {
    super.initState();
    _controller.addListener(_controllerListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Text',
        controller: _controller,
      ),
    );
  }
}

final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(BuildContext context) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    final typographyInstance = MyoroTypographyDesignSystem.instance;

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Text style',
        menuConfiguration: MyoroMenuConfiguration(
          request: typographyInstance.allTextStyles.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: typographyInstance.getTextStyleName,
        initiallySelectedItem: bloc.state.textStyle,
        onChanged: (TextStyle? textStyle) => _onChanged(context, textStyle),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(TextStyle textStyle) {
    final typographyInstance = MyoroTypographyDesignSystem.instance;
    return MyoroMenuItem(text: typographyInstance.getTextStyleName(textStyle));
  }

  void _onChanged(BuildContext context, TextStyle? textStyle) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
    bloc.add(SetTextStyleEvent(textStyle));
  }
}

final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    return MyoroSingularDropdown<TextAlign>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Text alignment',
        menuConfiguration: MyoroMenuConfiguration(
          request: TextAlign.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: (TextAlign textAlign) => textAlign.name,
        initiallySelectedItem: bloc.state.textAlign,
        onChanged: (TextAlign? textAlign) => _onChanged(context, textAlign),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(TextAlign textAlign) {
    return MyoroMenuItem(text: textAlign.name);
  }

  void _onChanged(BuildContext context, TextAlign? textAlign) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
    bloc.add(SetTextAlignEvent(textAlign));
  }
}

final class _PaddingOption extends StatefulWidget {
  const _PaddingOption();

  @override
  State<_PaddingOption> createState() => _PaddingOptionState();
}

final class _PaddingOptionState extends State<_PaddingOption> {
  late final _bloc =
      context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = TextEditingController(
    text: _bloc.state.padding?.toString(),
  );

  void _setPaddingEvent([bool enabled = true]) {
    _bloc.add(
      SetPaddingEvent(
        enabled && _controller.text.isNotEmpty
            ? double.parse(_controller.text)
            : null,
      ),
    );
  }

  void _checkboxOnChanged(bool enabled, _) => _setPaddingEvent(enabled);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 200,
      configuration: MyoroInputConfiguration(
        label: 'Padding',
        controller: _controller,
        onChanged: (_) => _setPaddingEvent(),
        checkboxOnChanged: _checkboxOnChanged,
      ),
    );
  }
}

final class _MainAxisAlignmentOption extends StatelessWidget {
  const _MainAxisAlignmentOption();

  @override
  Widget build(BuildContext context) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    return MyoroSingularDropdown<MainAxisAlignment>(
      configuration: MyoroSingularDropdownConfiguration(
        label: 'MainAxisAlignment',
        menuConfiguration: MyoroMenuConfiguration(
          request: MainAxisAlignment.values.toSet,
          itemBuilder: _itemBuilder,
        ),
        selectedItemBuilder: _selectedItemBuilder,
        initiallySelectedItem: bloc.state.mainAxisAlignment,
        onChanged:
            (mainAxisAlignment) => _onChanged(context, mainAxisAlignment),
      ),
    );
  }

  MyoroMenuItem _itemBuilder(MainAxisAlignment mainAxisAlignment) {
    return MyoroMenuItem(text: mainAxisAlignment.name);
  }

  String _selectedItemBuilder(MainAxisAlignment mainAxisAlignment) {
    return mainAxisAlignment.name;
  }

  void _onChanged(BuildContext context, MainAxisAlignment? mainAxisAlignment) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
    bloc.add(SetMainAxisAlignmentEvent(mainAxisAlignment));
  }
}

final class _OnPressedEnabledOption extends StatelessWidget {
  const _OnPressedEnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc =
        context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: 'onPressed enabled?',
      initialValue: bloc.state.onPressedEnabled,
      onChanged:
          (bool onPressedEnabled) =>
              bloc.add(SetOnPressedEnabledEvent(onPressedEnabled)),
    );
  }
}
