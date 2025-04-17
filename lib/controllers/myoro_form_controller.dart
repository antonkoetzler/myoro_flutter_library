import 'package:myoro_flutter_library/blocs/myoro_form_bloc/myoro_form_bloc.dart';

class MyoroFormController {
  late final MyoroFormBloc _bloc;

  /// Start the form execution process.
  void finish() => _bloc.add(const FinishFormEvent());

  set bloc(MyoroFormBloc bloc) => _bloc = bloc;
}
