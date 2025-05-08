import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_state.dart';
part 'myoro_table_event.dart';

typedef _Emitter<T> = Emitter<MyoroTableState<T>>;

/// [Bloc] of [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTableBloc<T> extends Bloc<MyoroTableEvent<T>, MyoroTableState<T>> {
  /// Configuration of the [MyoroTable].
  late MyoroTableConfiguration<T> _configuration;
  MyoroTableConfiguration<T> get configuration => _configuration;
  set configuration(MyoroTableConfiguration<T> configuration) {
    _configuration = configuration;
    _titleColumnKeys
      ..clear()
      ..addAll(configuration.columns.map<GlobalKey>((_) => GlobalKey()));
  }

  /// [List] of [GlobalKey]s attributed to every [MyoroTableColumn].
  final List<GlobalKey> _titleColumnKeys = [];
  List<GlobalKey> get titleColumnKeys => _titleColumnKeys;

  /// [ValueNotifier] responsible for gathering the widths of each [GlobalKey] of [_titleColumnKeys].
  final _titleColumnKeyWidthsNotifier = ValueNotifier<List<double>>(const []);
  ValueNotifier<List<double>> get titleColumnKeyWidthsNotifier => _titleColumnKeyWidthsNotifier;

  @override
  Future<void> close() async {
    _titleColumnKeyWidthsNotifier.dispose();
    return await super.close();
  }

  MyoroTableBloc() : super(MyoroTableState<T>()) {
    on<FetchEvent<T>>(_fetchEvent);
  }

  Future<void> _fetchEvent(FetchEvent<T> event, _Emitter<T> emit) async {
    await _treatExceptions(event, emit, () async {
      final Set<T> items = await _configuration.request();
      emit(state.copyWith(status: MyoroRequestEnum.success, items: items));
    });
  }

  Future<void> _treatExceptions(
    MyoroTableEvent<T> event,
    _Emitter<T> emit,
    Function() function,
  ) async {
    String? errorMessage;

    try {
      emit(state.copyWith(status: MyoroRequestEnum.loading));
      await function.call();
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print('[MyoroTableBloc<$T>.${event.runtimeType}]: HTTP error: "$errorMessage".');
      }
    } catch (genericError, stackTrace) {
      errorMessage = genericError.toString();
      if (kDebugMode) {
        print('[MyoroTableBloc<$T>.${event.runtimeType}]: Generic error: "$errorMessage".');
        print('Stack trace: $stackTrace\n');
      }
    }

    if (errorMessage == null) return;

    emit(state.copyWith(status: MyoroRequestEnum.error, errorMessage: errorMessage));
  }
}
