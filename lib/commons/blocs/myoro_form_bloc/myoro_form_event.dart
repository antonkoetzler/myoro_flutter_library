part of 'myoro_form_bloc.dart';

@immutable
sealed class MyoroFormEvent {
  const MyoroFormEvent();
}

final class FinishFormEvent extends MyoroFormEvent {
  const FinishFormEvent();
}
