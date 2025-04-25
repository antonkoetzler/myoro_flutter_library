import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_menu_bloc/myoro_menu_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A menu widget that should not be used in production code, it is used
/// within [_MyoroDropdown] & [MyoroInput] similar to the software dmenu.
class MyoroMenu<T> extends StatefulWidget {
  /// Configuration options.
  final MyoroMenuConfiguration<T> configuration;

  const MyoroMenu({super.key, required this.configuration});

  @override
  State<MyoroMenu<T>> createState() => _MyoroMenuState<T>();
}

final class _MyoroMenuState<T> extends State<MyoroMenu<T>> {
  MyoroMenuConfiguration<T> get _configuration => widget.configuration;

  MyoroMenuController<T>? _localController;
  MyoroMenuController<T> get _controller {
    return _configuration.controller ??
        (_localController ??= MyoroMenuController());
  }

  /// [Bloc] of the [MyoroMenu].
  late final MyoroMenuBloc<T> _bloc;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final _scrollController = ScrollController();

  /// Last position of [_scrollController] before [MyoroMenuConfiguration.onEndReachedRequest].
  double? _onEndReachedPosition;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroMenuBloc(_configuration);
    _supplyController();
    _controller.fetch();
    if (_configuration.onEndReachedRequest != null) {
      _scrollController.addListener(_scrollControllerListener);
    }
  }

  @override
  void didUpdateWidget(covariant MyoroMenu<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _supplyController();
  }

  @override
  void dispose() {
    _bloc.close();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      child: Container(
        decoration: BoxDecoration(
          color: themeExtension.primaryColor,
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        constraints: _configuration.constraints,
        child: BlocBuilder<MyoroMenuBloc<T>, MyoroMenuState<T>>(
          buildWhen: _buildWhen,
          builder: _builder,
        ),
      ),
    );
  }

  void _supplyController() {
    _controller.bloc = _bloc;
  }

  void _scrollControllerListener() {
    final ScrollPosition position = _scrollController.position;
    final double pixels = position.pixels;
    final double maxScrollExtent = position.maxScrollExtent;
    if (pixels != maxScrollExtent) return;
    _onEndReachedPosition = pixels;
    _controller.fetch();
  }

  bool _buildWhen(MyoroMenuState<T> previous, MyoroMenuState<T> current) {
    return previous.status != current.status;
  }

  Widget _builder(_, MyoroMenuState<T> state) {
    // Jump to the last position of the list before
    // calling [MyoroMenuConfiguration.onEndReachedRequest].
    if (state.status.isSuccess && _onEndReachedPosition != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.jumpTo(_onEndReachedPosition!);
      });
    }

    return switch (state.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Items(
        _controller,
        _configuration,
        _scrollController,
      ),
      MyoroRequestEnum.error => const _DialogText('Error getting items.'),
    };
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();
    return Center(
      child: Padding(
        padding: themeExtension.dialogTextLoaderPadding,
        child: const MyoroCircularLoader(),
      ),
    );
  }
}

final class _Items<T> extends StatelessWidget {
  final MyoroMenuController<T> _controller;
  final MyoroMenuConfiguration<T> _configuration;
  final ScrollController _scrollController;

  const _Items(this._controller, this._configuration, this._scrollController);

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        context.resolveThemeExtension<MyoroMenuThemeExtension>().borderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius.copyWith(
        topLeft: Radius.circular(borderRadius.topLeft.x - 4),
        topRight: Radius.circular(borderRadius.topLeft.x - 4),
        bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
        bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_configuration.searchCallback != null) _SearchBar(_controller),
          Flexible(
            child: BlocBuilder<MyoroMenuBloc<T>, MyoroMenuState<T>>(
              buildWhen: _buildWhen,
              builder: _builder,
            ),
          ),
        ],
      ),
    );
  }

  bool _buildWhen(MyoroMenuState<T> previous, MyoroMenuState<T> current) {
    return previous.queriedItems != current.queriedItems;
  }

  Widget _builder(_, MyoroMenuState<T> state) {
    final items = state.queriedItems ?? state.items;
    final itemWidgets =
        items
            .map<Widget>((T item) => _Item(_configuration.itemBuilder(item)))
            .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (items.isNotEmpty) ...[
          Flexible(
            child: ListView.builder(
              controller: _scrollController,
              shrinkWrap: true,
              itemCount: itemWidgets.length,
              itemBuilder: (_, int index) => itemWidgets[index],
            ),
          ),
        ] else ...[
          const Flexible(child: _DialogText('No items to display.')),
        ],
      ],
    );
  }
}

final class _SearchBar<T> extends StatelessWidget {
  final MyoroMenuController<T> _controller;

  const _SearchBar(this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Padding(
      padding: themeExtension.searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          inputStyle: themeExtension.searchBarInputStyle,
          autofocus: true,
          onChanged: _controller.search,
        ),
      ),
    );
  }
}

final class _Item extends StatelessWidget {
  final MyoroMenuItem _item;

  const _Item(this._item);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final BorderRadius itemBorderRadius = themeExtension.itemBorderRadius;
    final MyoroButtonConfigurationBackgroundColorBuilder?
    backgroundColorBuilder =
        _item.isSelected ? (_) => _backgroundColorBuilder(context) : null;

    if (_item.builder != null) {
      return MyoroButton(
        configuration: MyoroButtonConfiguration(
          borderRadius: itemBorderRadius,
          backgroundColorBuilder: backgroundColorBuilder,
          onTapDown: _item.onTapDown,
          onTapUp: _item.onTapUp,
        ),
        builder: _item.builder!,
      );
    }

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: _item.iconConfiguration,
        textConfiguration: _item.textConfiguration,
        borderRadius: itemBorderRadius,
        backgroundColorBuilder: backgroundColorBuilder,
        onTapDown: _item.onTapDown,
        onTapUp: _item.onTapUp,
      ),
    );
  }

  Color _backgroundColorBuilder(BuildContext context) {
    final buttonVariantThemeExtension =
        context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
    return buttonVariantThemeExtension.primaryHoverContentColor;
  }
}

final class _DialogText extends StatelessWidget {
  final String _text;

  const _DialogText(this._text);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroMenuThemeExtension>();
    return Center(
      child: Padding(
        padding: themeExtension.dialogTextLoaderPadding,
        child: Text(
          _text,
          style:
              context
                  .resolveThemeExtension<MyoroMenuThemeExtension>()
                  .dialogTextStyle,
        ),
      ),
    );
  }
}
