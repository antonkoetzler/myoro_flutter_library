part of '../myoro_modal.dart';

/// Header area of the [MyoroModal].
final class _Header extends StatelessWidget {
  final MyoroModalConfiguration _configuration;

  const _Header(this._configuration);

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (_configuration.title.isNotEmpty) Expanded(child: _Title(_configuration.title)),
        if (_configuration.showCloseButton == true) _CloseButton(_configuration),
      ],
    );
  }
}
