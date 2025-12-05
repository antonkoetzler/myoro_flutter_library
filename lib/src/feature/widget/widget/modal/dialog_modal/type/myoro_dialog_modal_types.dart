import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] builder.
typedef MyoroDialogModalBuilder<T> = Widget Function(BuildContext context, MyoroRequest<T> request);
