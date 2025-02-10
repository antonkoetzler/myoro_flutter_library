import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MyoroFormController {
  late final MyoroFormBloc _bloc;

  /// Start the form execution process.
  void finish() => _bloc.add(const FinishFormEvent());

  set bloc(MyoroFormBloc bloc) => _bloc = bloc;
}
