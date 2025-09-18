import 'package:flutter/material.dart';

/// Builder of the accordion [Widget]s.
typedef MyoroAccordionBuilder<T> = Widget Function(T item, bool isSelected);
