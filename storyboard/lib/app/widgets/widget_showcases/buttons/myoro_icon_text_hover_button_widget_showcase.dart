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
    return BlocBuilder<MyoroIconTextHoverButtonWidgetShowcaseBloc, MyoroIconTextHoverButtonWidgetShowcaseState>(
      builder: (_, MyoroIconTextHoverButtonWidgetShowcaseState state) {
        return MyoroIconTextHoverButton(
          configuration: const MyoroHoverButtonConfiguration(bordered: true),
          icon: state.icon,
          iconSize: state.iconSize,
          text: state.text,
          textStyle: state.textStyle,
          textAlign: state.textAlign,
          padding: state.padding != null ? EdgeInsets.all(state.padding!) : null,
          mainAxisAlignment: state.mainAxisAlignment,
          onPressed: state.onPressedEnabled ? () {} : null,
        );
      },
    );
  }
}

final class _IconOption extends StatefulWidget {
  const _IconOption();

  @override
  State<_IconOption> createState() => _IconOptionState();
}

final class _IconOptionState extends State<_IconOption> {
  String _itemLabelBuilder(IconData icon) => 'kMyoroTestIcons[${kMyoroTestIcons.indexOf(icon).toString()}]';

  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<IconData>(_bloc.state.icon);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<IconData>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroIconTextHoverButton.icon]',
        dataConfiguration: MyoroDataConfiguration(
          staticItems: kMyoroTestIcons,
        ),
        itemLabelBuilder: _itemLabelBuilder,
        itemBuilder: (IconData icon) => MyoroMenuItem(icon: icon, text: _itemLabelBuilder(icon)),
      ),
      controller: _controller,
      onChanged: (IconData? icon) => _bloc.add(SetIconEvent(icon)),
    );
  }
}

final class _IconSizeOption extends StatefulWidget {
  const _IconSizeOption();

  @override
  State<_IconSizeOption> createState() => _IconSizeOptionState();
}

final class _IconSizeOptionState extends State<_IconSizeOption> {
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = TextEditingController(text: _bloc.state.iconSize?.toString());

  void _setIconSizeEvent([String? text]) => _bloc.add(SetIconSizeEvent(text != null ? double.parse(text) : null));
  void _controllerListener() => _setIconSizeEvent(_controller.text.isEmpty ? null : _controller.text);

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
        label: '[MyoroIconTextHoverButton.iconSize]',
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
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
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
        label: '[MyoroIconTextHoverButton.text]',
        controller: _controller,
      ),
    );
  }
}

final class _TextStyleOption extends StatefulWidget {
  const _TextStyleOption();

  @override
  State<_TextStyleOption> createState() => _TextStyleOptionState();
}

final class _TextStyleOptionState extends State<_TextStyleOption> {
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<TextStyle>(_bloc.state.textStyle);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;

    return MyoroSingularDropdown<TextStyle>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroIconTextHoverButton.textStyle]',
        dataConfiguration: MyoroDataConfiguration(
          staticItems: typographyInstance.allTextStyles,
        ),
        itemBuilder: (TextStyle textStyle) => MyoroMenuItem(text: typographyInstance.getTextStyleName(textStyle)),
        itemLabelBuilder: typographyInstance.getTextStyleName,
      ),
      controller: _controller,
      onChanged: (TextStyle? textStyle) => _bloc.add(SetTextStyleEvent(textStyle)),
    );
  }
}

final class _TextAlignOption extends StatefulWidget {
  const _TextAlignOption();

  @override
  State<_TextAlignOption> createState() => _TextAlignOptionState();
}

final class _TextAlignOptionState extends State<_TextAlignOption> {
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<TextAlign>(_bloc.state.textAlign);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<TextAlign>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroIconTextHoverButton.textAlign]',
        dataConfiguration: MyoroDataConfiguration(staticItems: TextAlign.values),
        itemBuilder: (TextAlign textAlign) => MyoroMenuItem(text: textAlign.name),
        itemLabelBuilder: (TextAlign textAlign) => textAlign.name,
      ),
      controller: _controller,
      onChanged: (TextAlign? textAlign) => _bloc.add(SetTextAlignEvent(textAlign)),
    );
  }
}

final class _PaddingOption extends StatefulWidget {
  const _PaddingOption();

  @override
  State<_PaddingOption> createState() => _PaddingOptionState();
}

final class _PaddingOptionState extends State<_PaddingOption> {
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = TextEditingController(text: _bloc.state.padding?.toString());

  void _setPaddingEvent([bool enabled = true]) {
    _bloc.add(SetPaddingEvent(enabled && _controller.text.isNotEmpty ? double.parse(_controller.text) : null));
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
        label: '[MyoroIconTextHoverButton.padding]',
        controller: _controller,
        onChanged: (_) => _setPaddingEvent(),
        checkboxOnChanged: _checkboxOnChanged,
      ),
    );
  }
}

final class _MainAxisAlignmentOption extends StatefulWidget {
  const _MainAxisAlignmentOption();

  @override
  State<_MainAxisAlignmentOption> createState() => _MainAxisAlignmentOptionState();
}

final class _MainAxisAlignmentOptionState extends State<_MainAxisAlignmentOption> {
  late final _bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();
  late final _controller = MyoroSingularDropdownController<MainAxisAlignment>(_bloc.state.mainAxisAlignment);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<MainAxisAlignment>(
      configuration: MyoroDropdownConfiguration(
        label: '[MyoroIconTextHoverButton.mainAxisAlignment]',
        dataConfiguration: MyoroDataConfiguration(staticItems: MainAxisAlignment.values),
        itemBuilder: (MainAxisAlignment mainAxisAlignment) => MyoroMenuItem(text: mainAxisAlignment.name),
        itemLabelBuilder: (MainAxisAlignment mainAxisAlignment) => mainAxisAlignment.name,
      ),
      onChanged: (MainAxisAlignment? mainAxisAlignment) => _bloc.add(SetMainAxisAlignmentEvent(mainAxisAlignment)),
      controller: _controller,
    );
  }
}

final class _OnPressedEnabledOption extends StatelessWidget {
  const _OnPressedEnabledOption();

  @override
  Widget build(BuildContext context) {
    final bloc = context.resolveBloc<MyoroIconTextHoverButtonWidgetShowcaseBloc>();

    return MyoroCheckbox(
      label: '[MyoroIconTextHoverButton.onPressed] enabled?',
      initialValue: bloc.state.onPressedEnabled,
      onChanged: (bool onPressedEnabled) => bloc.add(SetOnPressedEnabledEvent(onPressedEnabled)),
    );
  }
}
