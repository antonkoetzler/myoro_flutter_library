import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_myoro_indexed_stack_state.dart';
part '_widget/_indexed_stack.dart';
part '_widget/_indicator.dart';
part '_widget/_indicator_item.dart';

/// Indexed stack of MFL.
class MyoroIndexedStack extends StatefulWidget {
  const MyoroIndexedStack({
    super.key,
    this.style = const MyoroIndexedStackStyle(),
    this.index = 0,
    required this.children,
  }) : assert(children.length > 0, '[MyoroIndexedStack]: [children] must not be empty.'),
       assert(
         index >= 0 && index < children.length,
         '[MyoroIndexedStack]: [index] must be between 0 and ${children.length - 1}.',
       );

  /// Style.
  final MyoroIndexedStackStyle style;

  /// Index.
  final int index;

  /// Children.
  final List<Widget> children;

  @override
  State<MyoroIndexedStack> createState() => _MyoroIndexedStackState();
}
