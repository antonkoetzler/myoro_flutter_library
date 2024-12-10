import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget that contains a widget on the left, then controls on the right to
/// experiment with the different options of the _ Used in [StoryboardBody].
final class WidgetShowcase extends StatefulWidget {
  /// Widget that will be on the left.
  final Widget widget;

  /// Options to experiment on the widget that will be on the right.
  final List<Widget> widgetOptions;

  const WidgetShowcase({
    super.key,
    required this.widget,
    this.widgetOptions = const [],
  });

  @override
  State<WidgetShowcase> createState() => _WidgetShowcaseState();
}

final class _WidgetShowcaseState extends State<WidgetShowcase> {
  Widget get _widget => widget.widget;
  List<Widget> get _widgetOptions => widget.widgetOptions;

  @override
  void initState() {
    super.initState();
    context.resolveBloc<WidgetShowcaseBloc>().add(
          ToggleWidgetShowcaseDisplayEvent(
            enabled: _widgetOptions.isNotEmpty,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _WidgetWrapper(_widget)),
        if (_widgetOptions.isNotEmpty) _WidgetOptions(_widgetOptions),
      ],
    );
  }
}

final class _WidgetWrapper extends StatelessWidget {
  final Widget widget;

  const _WidgetWrapper(this.widget);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Padding(
      padding: themeExtension.widgetWrapperPadding,
      child: Container(
        height: double.infinity,
        alignment: themeExtension.wrapperWrapperAlignment,
        decoration: BoxDecoration(
          color: themeExtension.widgetWrapperBackgroundColor,
          borderRadius: themeExtension.widgetWrapperBorderRadius,
          border: themeExtension.widgetWrapperBorder,
        ),
        child: Padding(
          padding: themeExtension.widgetWrapperContentPadding,
          child: widget,
        ),
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  final List<Widget> _widgetOptions;

  const _WidgetOptions(this._widgetOptions);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    return BlocBuilder<WidgetShowcaseBloc, WidgetShowcaseState>(
      builder: (_, WidgetShowcaseState state) {
        if (_widgetOptions.isEmpty || !state.displayingWidgetOptions) return const SizedBox.shrink();

        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyoroBasicDivider(Axis.vertical),
            IntrinsicWidth(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 200,
                ),
                child: Padding(
                  padding: themeExtension.widgetOptionsPadding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _widgetOptions.map<Widget>(
                      (Widget widgetOption) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            widgetOption,
                            if (_widgetOptions.indexOf(widgetOption) != _widgetOptions.length - 1)
                              MyoroBasicDivider(
                                Axis.horizontal,
                                padding: themeExtension.widgetOptionsDividerPadding,
                              ),
                          ],
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
