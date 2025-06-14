part of '../myoro_modal.dart';

/// Header area of the [MyoroModal].
final class _Header extends StatelessWidget {
  final MyoroModalConfiguration _configuration;

  const _Header(this._configuration);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_configuration.title.isNotEmpty) _Title(_configuration.title),
        if (_configuration.showCloseButton == true) ...[const Spacer(), _CloseButton(_configuration)],
      ],
    );
  }
}
