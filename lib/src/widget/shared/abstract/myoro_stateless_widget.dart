import 'package:flutter/material.dart';

/// [StatelessWidget] abstract for an MFL [Widget].
abstract class MyoroStatelessWidget extends StatelessWidget {
  const MyoroStatelessWidget({super.key, this.createViewModel = true});

  /// Used for testing purposes where we need to inject a view model.
  final bool createViewModel;
}
