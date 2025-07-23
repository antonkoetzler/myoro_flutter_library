import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MainScreen].
final class MainScreenViewModel {
  void widgetListingAccordionItemContentButtonOnTapUp(BuildContext context, String widgetName) {
    context.push('/widget_showcase/$widgetName');
  }
}
