import 'package:flutter/material.dart';

/// [StatefulWidget] abstract for an MFL [Widget].
abstract class MyoroStatefulWidget<T> extends StatefulWidget {
  const MyoroStatefulWidget({super.key, this.injectedViewModel});

  /// Used for testing purposes where we need to inject a view model.
  final T? injectedViewModel;
}
