import 'package:flutter/material.dart';

/// [StatelessWidget] abstract for an MFL [Widget].
abstract class MyoroStatelessWidget<T> extends StatelessWidget {
  const MyoroStatelessWidget({super.key, this.injectedViewModel});

  /// Used for testing purposes where we need to inject a view model.
  final T? injectedViewModel;
}
