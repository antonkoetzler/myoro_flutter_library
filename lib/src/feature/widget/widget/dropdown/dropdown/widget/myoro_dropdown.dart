import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_menu.dart';

/// Generic dropdown.
class MyoroDropdown<T> extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroDropdownStyle();

  /// Default constructor.
  const MyoroDropdown({
    super.key,
    this.style = styleDefaultValue,
    required this.showingController,
    this.items,
    this.selectedItems = const {},
    this.searchCallback,
    this.dropdownType,
    this.targetKey,
    required this.itemBuilder,
    required this.child,
  });

  /// Style.
  final MyoroDropdownStyle style;

  /// Showing controller.
  final ValueNotifier<bool> showingController;

  /// Items.
  final Set<T>? items;

  /// Selected items.
  final Set<T> selectedItems;

  /// Search callback.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Dropdown type.
  ///
  /// Default is [MyoroDropdownTypeEnum.bottomSheet] on mobile and [MyoroDropdownTypeEnum.expanding] on other platforms.
  final MyoroDropdownTypeEnum? dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Child.
  final Widget child;

  /// Create state function.
  @override
  State<MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

/// [State] of [MyoroDropdown].
final class _MyoroDropdownState<T> extends State<MyoroDropdown<T>> {
  /// View model.
  late final MyoroDropdownViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroDropdownViewModel<T>(
      widget.showingController,
      widget.items,
      widget.selectedItems,
      widget.searchCallback,
      widget.dropdownType,
      widget.targetKey,
      widget.itemBuilder,
    );
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final state = _viewModel.state;
    final baseKey = state.baseKey;
    final link = state.link;
    final showingController = state.showingController;
    final disableDropdown = _viewModel.disableDropdown;
    final dropdownType = state.dropdownType;

    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final expandingAndOverlaySpacing = themeExtension.expandingAndOverlaySpacing ?? 0;

    return MultiProvider(
      key: baseKey,
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: switch (dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, (state.targetKeySize?.height ?? 0) + expandingAndOverlaySpacing),
              child: TapRegion(
                groupId: state.tapRegionGroupId,
                onTapOutside: (_) => disableDropdown(),
                child: _Menu<T>(),
              ),
            ),
          ),
          child: TapRegion(
            groupId: state.tapRegionGroupId,
            child: CompositedTransformTarget(link: link, child: widget.child),
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
                spacing: expandingAndOverlaySpacing,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: widget.child),
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
        MyoroDropdownTypeEnum.modal => widget.child,
        MyoroDropdownTypeEnum.bottomSheet => widget.child,
      },
    );
  }
}
