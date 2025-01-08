import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDataConfiguration].
void main() {
  final model = MyoroDataConfiguration.fake();

  test('MyoroDataConfiguration constructor assertion', () {
    expect(() => MyoroDataConfiguration(), throwsAssertionError);
  });

  test('MyoroDataConfiguration.copyWith', () {
    final newModel = MyoroDataConfiguration.fake();
    final copyModel = model.copyWith(
      staticItems: newModel.staticItems,
      staticItemsEnabled: newModel.staticItemsUsed,
      asyncronousItems: newModel.asyncronousItems,
      asyncronousItemsEnabled: newModel.asyncronousItemsUsed,
      currentPage: newModel.currentPage,
      totalPages: newModel.totalPages,
      itemsPerPage: newModel.itemsPerPage,
      filters: newModel.filters,
    );
    expect(copyModel.staticItems, newModel.staticItems);
    expect(copyModel.asyncronousItems, newModel.asyncronousItems);
    expect(copyModel.currentPage, newModel.currentPage);
    expect(copyModel.totalPages, newModel.totalPages);
    expect(copyModel.itemsPerPage, newModel.itemsPerPage);
    expect(copyModel.filters, newModel.filters);
  });

  test('MyoroDataConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroDataConfiguration<dynamic>(\n'
      '  staticItems: ${model.staticItems},\n'
      '  asyncronousItems: ${model.asyncronousItems},\n'
      '  currentPage: ${model.currentPage},\n'
      '  totalPages: ${model.totalPages},\n'
      '  itemsPerPage: ${model.itemsPerPage},\n'
      '  _filters: ${model.filters},\n'
      ');',
    );
  });

  test('MyoroDataConfiguration.addFilters', () {
    final filters = {
      for (int i = 0; i < faker.randomGenerator.integer(9999); i++) '#$i: ${faker.lorem.word()}': faker.sport.name(),
    };
    model.addFilters(filters);
    for (int i = 0; i < filters.keys.length; i++) {
      expect(model.filters.containsKey(filters.keys.elementAt(i)), isTrue);
      expect(model.filters.containsValue(filters[filters.keys.elementAt(i)]), isTrue);
    }
  });

  test('MyoroDataConfiguration.addFilters', () {
    final removedFilters = List.generate(
      faker.randomGenerator.integer(model.filters.keys.length),
      (int i) => model.filters.keys.elementAt(i),
    );
    model.removeFilters(removedFilters);
    for (int i = 0; i < removedFilters.length; i++) {
      expect(model.filters.containsKey(removedFilters[i]), isFalse);
    }
  });

  test('MyoroDataConfiguration getters', () async {
    final staticItemsModel = MyoroDataConfiguration(staticItems: const ['Static']);
    expect(staticItemsModel.staticItemsUsed, isTrue);
    expect(staticItemsModel.asyncronousItemsUsed, isFalse);
    expect(await staticItemsModel.items, ['Static']);

    final asyncronousItemsModel = MyoroDataConfiguration(asyncronousItems: (_) async => ['Asyncronous']);
    expect(asyncronousItemsModel.staticItemsUsed, isFalse);
    expect(asyncronousItemsModel.asyncronousItemsUsed, isTrue);
    expect(await asyncronousItemsModel.items, ['Asyncronous']);
  });
}
