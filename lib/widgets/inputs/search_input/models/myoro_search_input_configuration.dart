part of '../myoro_search_input.dart';

/// Configuration of [MyoroSearchInput].
class MyoroSearchInputConfiguration<T> extends Equatable {
  static const requestWhenChangedDefaultValue = false;

  /// [MyoroInput] configuration.
  final MyoroInputConfiguration inputConfiguration;

  /// If [request] will be ran everytime the input's text changes rather than when the input is submitted.
  final bool requestWhenChanged;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  /// [MyoroMenuItem] builder to display the items in [_SearchSection].
  final MyoroMenuItemBuilder<T> itemBuilder;

  const MyoroSearchInputConfiguration({
    required this.inputConfiguration,
    this.requestWhenChanged = requestWhenChangedDefaultValue,
    required this.request,
    required this.itemBuilder,
  });

  MyoroSearchInputConfiguration.fake()
    : inputConfiguration = MyoroInputConfiguration.fake(),
      requestWhenChanged = faker.randomGenerator.boolean(),
      request = ((_) => {}),
      itemBuilder = ((_) => MyoroMenuItem.fake());

  MyoroSearchInputConfiguration<T> copyWith({
    MyoroInputConfiguration? inputConfiguration,
    bool? requestWhenChanged,
    MyoroSearchInputRequest<T>? request,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroSearchInputConfiguration(
      inputConfiguration: inputConfiguration ?? this.inputConfiguration,
      requestWhenChanged: requestWhenChanged ?? this.requestWhenChanged,
      request: request ?? this.request,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [inputConfiguration, requestWhenChanged, request, itemBuilder];
  }

  @override
  String toString() =>
      'MyoroSearchInputConfiguration(\n'
      '  inputConfiguration: $inputConfiguration,\n'
      '  requestWhenChanged: $requestWhenChanged,\n'
      '  request: $request,\n'
      '  itemBuilder: $itemBuilder,\n'
      ');';
}
