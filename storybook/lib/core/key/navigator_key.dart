import 'package:flutter/material.dart';

/// [GlobalKey] of Storybook's [NavigatorState].
///
/// Used to be able to execute functions that require [BuildContext]s without needing to
/// provide a [BuildContext], as we utilize the current [BuildContext] of [navigatorKey].
final navigatorKey = GlobalKey<NavigatorState>();
