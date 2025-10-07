import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_configuration.g.dart';

/// Model to store the configuration members of [MyoroModal] that
/// may be altered within other modals to not repeat the members.
@immutable
@myoroModel
class MyoroModalConfiguration<T> with _$MyoroModalConfigurationMixin<T> {
  /// Default value for [barrierDismissable].
  static const barrierDismissableDefaultValue = true;

  /// Default value for [useRootNavigator].
  static const useRootNavigatorDefaultValue = true;

  /// Default value for [title].
  static const titleDefaultValue = '';

  /// Default value for [showCloseButton].
  static const showCloseButtonDefaultValue = true;

  /// Creates a new instance of [MyoroModalConfiguration].
  const MyoroModalConfiguration({
    this.barrierDismissable = barrierDismissableDefaultValue,
    this.useRootNavigator = useRootNavigatorDefaultValue,
    this.onClosed,
    this.title = titleDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
  });

  /// Creates a fake instance of [MyoroModalConfiguration] for testing purposes.
  MyoroModalConfiguration.fake()
    : barrierDismissable = faker.randomGenerator.boolean(),
      useRootNavigator = faker.randomGenerator.boolean(),
      onClosed = faker.randomGenerator.boolean() ? ((_) {}) : null,
      title = faker.randomGenerator.boolean() ? faker.lorem.word() : titleDefaultValue,
      showCloseButton = faker.randomGenerator.boolean();

  /// If you click everywhere but the modal, it closes
  final bool barrierDismissable;

  /// Whether or not the [MyoroModal] should attach to the root [Navigator] of the [Widget] tree.
  /// Setting this to false is useful for cases when you need to utilize, for example, [Bloc]s that
  /// are defined in a specific place. Thus, you avoid the pessimization of globally scoping objects.
  ///
  /// In terms of MFL, this is the root [MyoroApp] of the application.
  ///
  /// When this is set to false, this means you want to attach the [MyoroModal] to a
  /// specific [Navigator]/[MyoroApp]. Not using [MyoroApp], here is how you would do so:
  ///
  /// ```dart
  /// final class _FooState extends State<Foo> {
  ///   final _navigatorKey = GlobalKey<NavigatorState>();
  ///
  ///   @override
  ///   Widget build(_) {
  ///     return Navigator(
  ///       key: _navigatorKey,
  ///       onGenerateRoute: (_) {
  ///         return MaterialPageRoute(
  ///           builder: (_) => GestureDetector(
  ///             onTap: () => MyoroModal.show(
  ///               _navigatorKey.currentContext!,
  ///               ...,
  ///             ),
  ///           ),
  ///         );
  ///       },
  ///     );
  ///   }
  /// }
  /// ```
  final bool useRootNavigator;

  /// Function executed when the modal is closed.
  final MyoroModalOnClosed<T>? onClosed;

  /// Title of the modal.
  final String title;

  /// If [_CloseButton] will be shown.
  final bool showCloseButton;
}
