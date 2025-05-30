// lib/src/copy_with_generator.dart
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:build/build.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:source_gen/source_gen.dart';

/// Model code generator class.
final class ModelGenerator extends GeneratorForAnnotation<Model> {
  @override
  String generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    final clazz = element;
    final className = clazz.name;
    final buffer = StringBuffer();

    buffer.writeln('extension _\$${className}CopyWith on $className {');
    buffer.writeln('  $className copyWith({');

    for (final field in clazz.fields.where((f) => !f.isStatic)) {
      final type = field.type.getDisplayString(withNullability: true);
      final name = field.name;
      if (type.endsWith('?')) {
        buffer.writeln('    $type $name,');
        buffer.writeln('    bool ${name}Provided = true,');
      } else {
        buffer.writeln('    $type $name,');
      }
    }

    buffer.writeln('  }) {');
    buffer.writeln('    return $className(');

    for (final field in clazz.fields.where((f) => !f.isStatic)) {
      final name = field.name;
      if (field.type.getDisplayString(withNullability: true).endsWith('?')) {
        buffer.writeln('      $name: ${name}Provided ? ($name ?? this.$name) : null,');
      } else {
        buffer.writeln('      $name: $name ?? this.$name,');
      }
    }

    buffer.writeln('    );');
    buffer.writeln('  }');
    buffer.writeln('}');

    return buffer.toString();
  }
}
