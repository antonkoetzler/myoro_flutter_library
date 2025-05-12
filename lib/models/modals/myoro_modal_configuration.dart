import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration members of [MyoroModal] that
/// may be altered within other modals to not repeat the members.
///
/// TODO: Test needs to be rewritten.
class MyoroModalConfiguration extends Equatable {
  static const barrierDismissableDefaultValue = true;
  static const useRootNavigatorDefaultValue = true;

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
  final String? title;

  /// If [_CloseButton] will be shown.
  final bool? showCloseButton;

  /// Content padding of the modal.
  final EdgeInsets? padding;

  const MyoroModalConfiguration({
    this.barrierDismissable = barrierDismissableDefaultValue,
    this.useRootNavigator = useRootNavigatorDefaultValue,
    this.constraints,
    this.onClosed,
    this.title,
    this.showCloseButton,
    this.padding,
  });

  MyoroModalConfiguration.fake()
    : barrierDismissable = faker.randomGenerator.boolean(),
      useRootNavigator = faker.randomGenerator.boolean(),
      constraints = null,
      onClosed = null,
      title = faker.lorem.word(),
      showCloseButton = faker.randomGenerator.boolean(),
      padding =
          faker.randomGenerator.boolean()
              ? EdgeInsets.all(faker.randomGenerator.decimal(scale: 20))
              : null;

  MyoroModalConfiguration copyWith({
    bool? barrierDismissable,
    bool? useRootNavigator,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    VoidCallback? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool titleProvided = true,
    bool? showCloseButton,
    bool showCloseButtonProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
  }) {
    return MyoroModalConfiguration(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      constraints: constraintsProvided ? (constraints ?? this.constraints) : null,
      onClosed: onClosedProvided ? (onClosed ?? this.onClosed) : null,
      title: titleProvided ? (title ?? this.title) : null,
      showCloseButton: showCloseButtonProvided ? (showCloseButton ?? this.showCloseButton) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      barrierDismissable,
      useRootNavigator,
      constraints,
      onClosed,
      title,
      showCloseButton,
      padding,
    ];
  }

  @override
  String toString() =>
      'MyoroModalConfiguration(\n'
      '  barrierDismissable: $barrierDismissable,\n'
      '  useRootNavigator: $useRootNavigator,\n'
      '  constraints: $constraints,\n'
      '  onClosed: $onClosed,\n'
      '  title: $title,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  padding: $padding,\n'
      ');';
}
