import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroResolverBloc].
void main() {
  const validationErrorMessage = 'Error.';
  const result = 'Success.';

  blocTest(
    '[MyoroResolverBloc.ExecuteRequestEvent]: Emits error state when [HttpException] is encountered.',
    build:
        () => MyoroResolverBloc<dynamic>(
          () => throw const HttpException(validationErrorMessage),
        ),
    act: (MyoroResolverBloc bloc) => bloc.add(const ExecuteRequestEvent()),
    expect:
        () => const [
          MyoroResolverState(status: MyoroRequestEnum.loading),
          MyoroResolverState(
            status: MyoroRequestEnum.error,
            errorMessage: validationErrorMessage,
          ),
        ],
  );

  blocTest(
    '[MyoroResolverBloc.ExecuteRequestEvent]: Emits error state when a generic [Exception] is encountered.',
    build:
        () => MyoroResolverBloc<dynamic>(
          () => throw Exception(validationErrorMessage),
        ),
    act: (MyoroResolverBloc bloc) => bloc.add(const ExecuteRequestEvent()),
    expect:
        () => const [
          MyoroResolverState(status: MyoroRequestEnum.loading),
          MyoroResolverState(
            status: MyoroRequestEnum.error,
            errorMessage: 'Exception: $validationErrorMessage',
          ),
        ],
  );

  blocTest(
    '[MyoroResolverBloc.ExecuteRequestEvent]: Emits successful state when the request is completely successfully.',
    build: () => MyoroResolverBloc<String>(() => result),
    act:
        (MyoroResolverBloc<String> bloc) =>
            bloc.add(const ExecuteRequestEvent()),
    expect:
        () => const [
          MyoroResolverState<String>(status: MyoroRequestEnum.loading),
          MyoroResolverState<String>(
            status: MyoroRequestEnum.success,
            result: result,
          ),
        ],
  );
}
