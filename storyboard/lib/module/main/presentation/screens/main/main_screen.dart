import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget_listing_accordion.dart';
part '_widget/_widget_listing_accordion_item_content.dart';
part '_widget/_widget_listing_accordion_item_content_button.dart';
part '_widget/_widget_listing_accordion_item_title.dart';
part '_widget/_widget_listing_accordion_search_bar.dart';

/// Main screen of Storyboard.
final class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(_) {
    return StoryboardScreen(
      configuration: StoryboardScreenConfiguration(
        title: 'MFL Storyboard',
        body: Provider(
          create: (_) => MainScreenViewModel(),
          child: const Column(
            children: [
              _WidgetListingAccordionSearchBar(),
              MyoroBasicDivider(Axis.horizontal),
              Expanded(child: _WidgetListingAccordion()),
            ],
          ),
        ),
      ),
    );
  }
}
