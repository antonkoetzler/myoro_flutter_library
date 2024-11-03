import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class StoryboardBody extends StatefulWidget {
  const StoryboardBody({super.key});

  @override
  State<StoryboardBody> createState() => _StoryboardBodyState();
}

final class _StoryboardBodyState extends State<StoryboardBody> {
  final _widgetListingWidthNotifier = ValueNotifier<double>(200);

  void _updateWidgetListeningWidthNotifier(DragUpdateDetails details) {
    if (!mounted) return;
    _widgetListingWidthNotifier.value += details.delta.dx;
  }

  @override
  void dispose() {
    _widgetListingWidthNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: _widgetListingWidthNotifier,
          builder: (_, double width, __) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  constraints: BoxConstraints(
                    minWidth: 80,
                    maxWidth: MediaQuery.of(context).size.width - 11,
                  ),
                  child: const _WidgetListing(),
                ),
                MyoroResizeDivider(
                  Axis.vertical,
                  dragCallback: _updateWidgetListeningWidthNotifier,
                ),
              ],
            );
          },
        ),
        const Expanded(child: _WidgetViewer()),
      ],
    );
  }
}

final class _WidgetListing extends StatelessWidget {
  const _WidgetListing();

  @override
  Widget build(BuildContext context) {
    return MyoroScrollable.singleChildScrollView(
      children: const [
        Text('Start'),
      ],
    );
  }
}

final class _WidgetViewer extends StatelessWidget {
  const _WidgetViewer();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
