part of '../myoro_field_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroFieldWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        MyoroField(
          direction: Axis.horizontal,
          label: localization.storybookFieldLabelLabel,
          data: localization.storybookFieldDataLabel,
        ),
        MyoroField(
          direction: Axis.vertical,
          label: localization.storybookFieldLabelLabel,
          data: localization.storybookFieldDataLabel,
        ),
      ],
    );
  }
}
