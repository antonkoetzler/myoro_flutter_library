part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Base [Widget] for selection dropdown implementations.
class _Base<T> extends StatelessWidget {
  const _Base();

  @override
  Widget build(_) {
    return MyoroSingleDropdown(
      // TODO: Mkae object.
      controller: MyoroSingleDropdownController(
        configuration: MyoroSingleDropdownConfiguration(
          menuConfiguration: MyoroSingleMenuConfiguration(
            request: () => {'Start'},
            itemBuilder: (item) => MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: item),
              ),
            ),
          ),
        ),
      ),
      child: const _Input(),
    );
  }
}
