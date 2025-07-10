import 'package:flutter/material.dart';

/// [StatefulWidget] abstract for an MFL [Widget].
///
/// TODO: DELETE THIS, use get it and injectable, and make every view model use @injectable as it
/// creates a new instance of the injectable object everytime it's called which makes this bad impl.
abstract class MyoroStatefulWidget extends StatefulWidget {
  const MyoroStatefulWidget({super.key, this.createViewModel = true});

  /// Used for testing purposes where we need to inject a view model.
  final bool createViewModel;
}
