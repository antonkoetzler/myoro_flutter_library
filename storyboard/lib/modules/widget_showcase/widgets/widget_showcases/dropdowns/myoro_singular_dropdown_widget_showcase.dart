import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_dropdown_widget_showcase_bloc/myoro_dropdown_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroSingularDropdown].
final class MyoroSingularDropdownWidgetShowcase extends StatelessWidget {
  /// For testing purposes.
  ///
  /// See myoro_singular_dropdown_widget_showcase_test.dart for it's application.
  final Key? widgetShowcaseKey;

  const MyoroSingularDropdownWidgetShowcase({
    this.widgetShowcaseKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyoroDropdownWidgetShowcaseBloc(),
      child: WidgetShowcase(
        key: widgetShowcaseKey,
        widget: const _Widget(),
        widgetOptions: const [
          MyoroDropdownWidgetShowcaseLabelOption(),
          MyoroDropdownWidgetShowcaseEnabledOption(),
          MyoroDropdownWidgetShowcaseAllowItemClearingOption(),
          MyoroDropdownWidgetShowcaseCheckboxOnChangedOption(),
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
      MyoroDropdownWidgetShowcaseBloc,
      MyoroDropdownWidgetShowcaseState
    >(
      builder: (_, MyoroDropdownWidgetShowcaseState state) {
        return MyoroSingularDropdown(
          configuration: MyoroSingularDropdownConfiguration<String>(
            label: state.label,
            enabled: state.enabled,
            allowItemClearing: state.allowItemClearing,
            menuConfiguration: MyoroMenuConfiguration(
              request: _request,
              itemBuilder: _itemBuilder,
            ),
            selectedItemBuilder: _selectedItemBuilder,
            checkboxOnChanged:
                state.checkboxOnChangedEnabled ? ((_, __) {}) : null,
          ),
        );
      },
    );
  }

  Set<String> _request() {
    return List.generate(
      faker.randomGenerator.integer(50),
      (int index) => '#$index: ${faker.randomGenerator.string(50)}',
    ).toSet();
  }

  MyoroMenuItem _itemBuilder(String item) {
    return MyoroMenuItem.fake().copyWith(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: item),
    );
  }

  String _selectedItemBuilder(String item) {
    return item;
  }
}
