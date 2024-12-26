import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Table [Widget] of the library.
final class MyoroTable<T> extends StatelessWidget {
  /// Column & title initialization of the table.
  final List<MyoroTableColumn> columns;

  /// Data of the table.
  final MyoroDataConfiguration<T> dataConfiguration;

  MyoroTable({
    super.key,
    required this.columns,
    required this.dataConfiguration,
  }) : assert(
          columns.isNotEmpty,
          '[MyoroTable]: [columns] must not be empty.',
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TitleRow(columns),
        Expanded(child: _DataRows(dataConfiguration)),
      ],
    );
  }
}

final class _TitleRow extends StatelessWidget {
  final List<MyoroTableColumn> _columns;

  const _TitleRow(this._columns);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _columns.map<Widget>((MyoroTableColumn column) {
        return switch (column.widthConfiguration?.columnWidthEnum) {
          MyoroTableColumnWidthEnum.fixed => SizedBox(width: column.widthConfiguration!.fixedWidth, child: _TitleColumn(column)),
          MyoroTableColumnWidthEnum.expanded => Expanded(child: _TitleColumn(column)),
          _ => Flexible(child: _TitleColumn(column)),
        };
      }).toList(),
    );
  }
}

final class _TitleColumn extends StatelessWidget {
  final MyoroTableColumn _column;

  const _TitleColumn(this._column);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Text(
      _column.title,
      style: _column.titleTextStyle ?? themeExtension.titleTextStyle,
    );
  }
}

final class _DataRows<T> extends StatelessWidget {
  final MyoroDataConfiguration<T> _dataConfiguration;

  const _DataRows(this._dataConfiguration);

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<List<T>>(
      request: () async => await _dataConfiguration.items,
      builder: (
        List<T>? items,
        MyoroRequestEnum status,
        String? errorMessage,
        MyoroResolverController controller,
      ) {
        return switch (status) {
          MyoroRequestEnum.idle => const _Loading(),
          MyoroRequestEnum.loading => const _Loading(),
          MyoroRequestEnum.success => _BuiltDataRows(items!),
          MyoroRequestEnum.error => _ErrorMessage(errorMessage!, controller),
        };
      },
    );
  }
}

final class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) => const Center(child: MyoroCircularLoader());
}

final class _BuiltDataRows<T> extends StatelessWidget {
  final List<T> _items;

  const _BuiltDataRows(this._items);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}

final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;
  final MyoroResolverController _controller;

  const _ErrorMessage(
    this._errorMessage,
    this._controller,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final errorMessages = [
      'Oops! Error retrieving items...',
      'Uh-oh! Failed to get items...',
      'There was a problem getting the items... Please try again!',
    ];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.errorMessageSpacing,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                errorMessages[faker.randomGenerator.integer(errorMessages.length)],
                style: themeExtension.errorMessageHeaderTextStyle,
              ),
              Text(
                _errorMessage,
                style: themeExtension.errorMessageErrorTextStyle,
              ),
            ],
          ),
          IntrinsicWidth(
            child: MyoroIconTextHoverButton(
              text: 'Click here to try again',
              configuration: themeExtension.errorMessageButtonConfiguration,
              onPressed: () => _controller.refresh(),
            ),
          ),
        ],
      ),
    );
  }
}
