//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panel_show_question_numbers.g.dart';

class PanelShowQuestionNumbers extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PanelShowQuestionNumbers default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'onpanel')
  static const PanelShowQuestionNumbers onpanel = _$onpanel;
  @BuiltValueEnumConst(wireName: r'off')
  static const PanelShowQuestionNumbers off = _$off;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PanelShowQuestionNumbers unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PanelShowQuestionNumbers> get serializer => _$panelShowQuestionNumbersSerializer;

  const PanelShowQuestionNumbers._(String name): super(name);

  static BuiltSet<PanelShowQuestionNumbers> get values => _$values;
  static PanelShowQuestionNumbers valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PanelShowQuestionNumbersMixin = Object with _$PanelShowQuestionNumbersMixin;

