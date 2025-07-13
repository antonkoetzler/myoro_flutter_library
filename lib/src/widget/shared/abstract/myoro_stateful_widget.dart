import 'package:flutter/material.dart';

/// [StatefulWidget] abstract for an MFL [Widget].
abstract class MyoroStatefulWidget extends StatefulWidget {
  const MyoroStatefulWidget({super.key, this.createViewModel = true});

  /// Used for testing purposes where we need to inject a view model.
  final bool createViewModel;
}
