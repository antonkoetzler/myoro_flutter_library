import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_menu.dart';

/// Generic dropdown.
class MyoroDropdown<T> extends StatelessWidget {
  /// Default value of [menuStyle].
  static const menuStyleDefaultValue = MyoroMenuStyle();

  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroDropdown({
    super.key,
    this.menuStyle = menuStyleDefaultValue,
    required this.showingController,
    this.items,
    this.selectedItems = const {},
    this.searchCallback,
    this.dropdownType = dropdownTypeDefaultValue,
    this.targetKey,
    required this.itemBuilder,
    required this.child,
  });

  /// [MyoroMenu] style.
  ///
  /// Only a [MyoroMenuStyle] is supported as there are no other visual effects.
  final MyoroMenuStyle menuStyle;

  /// Showing controller.
  final ValueNotifier<bool> showingController;

  /// Items.
  final Set<T>? items;

  /// Selected items.
  final Set<T> selectedItems;

  /// Search callback.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Child.
  final Widget child;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownViewModel<T>(
      this.showingController,
      items,
      selectedItems,
      searchCallback,
      dropdownType,
      targetKey,
      itemBuilder,
    );
    final state = viewModel.state;
    final baseKey = state.baseKey;
    final disableDropdown = viewModel.disableDropdown;
    final link = state.link;
    final showingController = state.showingController;

    return MultiProvider(
      key: baseKey,
      providers: [
        InheritedProvider.value(value: menuStyle),
        InheritedProvider.value(value: viewModel),
      ],
      child: switch (dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, state.targetKeySize?.height ?? 0),
              child: TapRegion(
                groupId: state.tapRegionGroupId,
                onTapOutside: (_) => disableDropdown(),
                child: _Menu<T>(),
              ),
            ),
          ),
          child: TapRegion(
            groupId: state.tapRegionGroupId,
            child: CompositedTransformTarget(link: link, child: child),
          ),
        ),
        MyoroDropdownTypeEnum.expanding => ValueListenableBuilder(
          valueListenable: showingController,
          builder: (_, bool isShowing, _) {
            return TapRegion(
              groupId: state.tapRegionGroupId,
              onTapOutside: isShowing ? (_) => disableDropdown() : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: child),
                  ),
                  if (isShowing)
                    Flexible(
                      child: TapRegion(
                        groupId: state.tapRegionGroupId,
                        child: SizedBox(width: state.targetKeySize?.width, child: _Menu<T>()),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
        MyoroDropdownTypeEnum.modal => child,
        MyoroDropdownTypeEnum.bottomSheet => child,
      },
    );
  }
}
