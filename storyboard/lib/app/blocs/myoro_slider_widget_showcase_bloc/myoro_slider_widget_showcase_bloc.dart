import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_slider_widget_showcase_state.dart';
part 'myoro_slider_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroSliderWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroSlider]'s options in [MyoroSliderWidgetShowcase].
final class MyoroSliderWidgetShowcaseBloc extends Bloc<MyoroSliderWidgetShowcaseEvent, MyoroSliderWidgetShowcaseState> {
  MyoroSliderWidgetShowcaseBloc({required double width}) : super(MyoroSliderWidgetShowcaseState(width: width)) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
    on<SetWidthEvent>(_setWidthEvent);
    on<SetCurrentValueIndicatorTextBuilderEnabledEvent>(_setCurrentValueIndicatorTextBuilderEnabledEvent);
    on<SetMaxValueIndicatorTextBuilderEnabledEvent>(_setMaxValueIndicatorTextBuilderEnabledEvent);
    on<SetFooterIndicatorTextBuilderEnabledEvent>(_setFooterIndicatorTextBuilderEnabledEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(state.copyWith(label: event.label));
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(labelTextStyle: event.labelTextStyle, labelTextStyleProvided: event.labelTextStyle != null));
  }

  void _setWidthEvent(SetWidthEvent event, _Emitter emit) {
    emit(state.copyWith(width: event.width));
  }

  void _setCurrentValueIndicatorTextBuilderEnabledEvent(SetCurrentValueIndicatorTextBuilderEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(currentValueIndicatorTextBuilderEnabled: event.currentValueIndicatorTextBuilderEnabled));
  }

  void _setMaxValueIndicatorTextBuilderEnabledEvent(SetMaxValueIndicatorTextBuilderEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(maxValueIndicatorTextBuilderEnabled: event.maxValueIndicatorTextBuilderEnabled));
  }

  void _setFooterIndicatorTextBuilderEnabledEvent(SetFooterIndicatorTextBuilderEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(footerIndicatorTextBuilderEnabled: event.footerIndicatorTextBuilderEnabled));
  }
}
