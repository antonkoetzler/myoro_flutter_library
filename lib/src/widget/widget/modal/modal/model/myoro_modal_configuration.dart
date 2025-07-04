import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_configuration.g.dart';

/// Model to store the configuration members of [MyoroModal] that
/// may be altered within other modals to not repeat the members.
@myoroModel
class MyoroModalConfiguration with _$MyoroModalConfigurationMixin {
  static const barrierDismissableDefaultValue = true;
  static const useRootNavigatorDefaultValue = true;
  static const titleDefaultValue = '';
  static const showCloseButtonDefaultValue = true;

  const MyoroModalConfiguration({
    this.barrierDismissable = barrierDismissableDefaultValue,
    this.useRootNavigator = useRootNavigatorDefaultValue,
    this.constraints,
    this.onClosed,
    this.title = titleDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.padding,
    this.closeButtonPadding,
  });

  MyoroModalConfiguration.fake()
    : barrierDismissable = faker.randomGenerator.boolean(),
      useRootNavigator = faker.randomGenerator.boolean(),
      constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      onClosed = faker.randomGenerator.boolean() ? (() {}) : null,
      title = faker.randomGenerator.boolean() ? faker.lorem.word() : titleDefaultValue,
      showCloseButton = faker.randomGenerator.boolean(),
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      closeButtonPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;

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

  /// Constraints of the modal.
  final BoxConstraints? constraints;

  /// Function executed when the modal is closed.
  final VoidCallback? onClosed;

  /// Title of the modal.
  final String title;

  /// If [_CloseButton] will be shown.
  final bool showCloseButton;

  /// Content padding of the modal.
  final EdgeInsets? padding;

  /// Padding around [_CloseButton].
  final EdgeInsets? closeButtonPadding;
}
