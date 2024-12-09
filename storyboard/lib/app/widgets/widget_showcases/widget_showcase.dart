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
  final Widget? widgetOptions;

  const WidgetShowcase({
    super.key,
    required this.widget,
    this.widgetOptions,
  });

  @override
  State<WidgetShowcase> createState() => _WidgetShowcaseState();
}

final class _WidgetShowcaseState extends State<WidgetShowcase> {
  Widget get _widget => widget.widget;
  Widget? get _widgetOptions => widget.widgetOptions;

  @override
  void initState() {
    super.initState();
    context.resolveBloc<WidgetShowcaseBloc>().add(
          ToggleWidgetShowcaseDisplayEvent(
            enabled: _widgetOptions != null,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _WidgetWrapper(_widget)),
        BlocBuilder<WidgetShowcaseBloc, WidgetShowcaseState>(
          builder: (_, WidgetShowcaseState state) {
            if (_widgetOptions == null || !state.displayingWidgetOptions) return const SizedBox.shrink();

            return Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyoroBasicDivider(Axis.vertical),
                _WidgetOptions(_widgetOptions!),
              ],
            );
          },
        ),
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
  final Widget widgetOptions;

  const _WidgetOptions(this.widgetOptions);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: widgetOptions,
        ),
      ),
    );
  }
}
