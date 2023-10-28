//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/selectbase_choices_from_question_mode.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_choices_order.dart';
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_all_of_choices_inner.dart';
import 'package:flutter_survey_js_model/src/model/choices_by_url.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/string_or_num.dart';
import 'package:flutter_survey_js_model/src/model/checkboxbase.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkbox.g.dart';

/// Checkbox
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [state] 
/// * [visible] 
/// * [useDisplayValuesInDynamicTexts] 
/// * [visibleIf] 
/// * [width] 
/// * [minWidth] 
/// * [maxWidth] 
/// * [startWithNewLine] 
/// * [indent] 
/// * [page] 
/// * [title] 
/// * [titleLocation] 
/// * [description] 
/// * [descriptionLocation] 
/// * [hideNumber] 
/// * [valueName] 
/// * [enableIf] 
/// * [defaultValue] 
/// * [defaultValueExpression] 
/// * [correctAnswer] 
/// * [clearIfInvisible] 
/// * [isRequired] 
/// * [requiredIf] 
/// * [requiredErrorText] 
/// * [readOnly] 
/// * [validators] 
/// * [bindings] 
/// * [renderAs] 
/// * [showCommentArea] 
/// * [commentText] 
/// * [commentPlaceholder] 
/// * [choicesFromQuestion] 
/// * [choices] 
/// * [choicesFromQuestionMode] 
/// * [choicesOrder] 
/// * [choicesByUrl] 
/// * [hideIfChoicesEmpty] 
/// * [choicesVisibleIf] 
/// * [choicesEnableIf] 
/// * [separateSpecialChoices] 
/// * [showOtherItem] 
/// * [showNoneItem] 
/// * [otherPlaceholder] 
/// * [noneText] 
/// * [otherText] 
/// * [otherErrorText] 
/// * [storeOthersAsComment] 
/// * [colCount] 
/// * [showSelectAllItem] 
/// * [maxSelectedChoices] 
/// * [minSelectedChoices] 
/// * [selectAllText] 
/// * [valuePropertyName] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class Checkbox implements Checkboxbase {
  @BuiltValueField(wireName: r'selectAllText')
  SurveyTitle? get selectAllText;

  @BuiltValueField(wireName: r'maxSelectedChoices')
  num? get maxSelectedChoices;

  @BuiltValueField(wireName: r'valuePropertyName')
  String? get valuePropertyName;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueField(wireName: r'minSelectedChoices')
  num? get minSelectedChoices;

  @BuiltValueField(wireName: r'showSelectAllItem')
  bool? get showSelectAllItem;

  @BuiltValueSerializer(custom: true)
  static Serializer<Checkbox> get serializer => _$CheckboxSerializer();
}

class _$CheckboxSerializer implements PrimitiveSerializer<Checkbox> {
  @override
  final Iterable<Type> types = const [Checkbox];

  @override
  final String wireName = r'Checkbox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Checkbox object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showOtherItem != null) {
      yield r'showOtherItem';
      yield serializers.serialize(
        object.showOtherItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.noneText != null) {
      yield r'noneText';
      yield serializers.serialize(
        object.noneText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.validators != null) {
      yield r'validators';
      yield serializers.serialize(
        object.validators,
        specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
      );
    }
    if (object.bindings != null) {
      yield r'bindings';
      yield serializers.serialize(
        object.bindings,
        specifiedType: const FullType(String),
      );
    }
    if (object.minSelectedChoices != null) {
      yield r'minSelectedChoices';
      yield serializers.serialize(
        object.minSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.choicesFromQuestionMode != null) {
      yield r'choicesFromQuestionMode';
      yield serializers.serialize(
        object.choicesFromQuestionMode,
        specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
      );
    }
    if (object.selectAllText != null) {
      yield r'selectAllText';
      yield serializers.serialize(
        object.selectAllText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.storeOthersAsComment != null) {
      yield r'storeOthersAsComment';
      yield serializers.serialize(
        object.storeOthersAsComment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.itemComponent != null) {
      yield r'itemComponent';
      yield serializers.serialize(
        object.itemComponent,
        specifiedType: const FullType(String),
      );
    }
    if (object.choicesEnableIf != null) {
      yield r'choicesEnableIf';
      yield serializers.serialize(
        object.choicesEnableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(QuestionState),
      );
    }
    if (object.showSelectAllItem != null) {
      yield r'showSelectAllItem';
      yield serializers.serialize(
        object.showSelectAllItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.otherErrorText != null) {
      yield r'otherErrorText';
      yield serializers.serialize(
        object.otherErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultValueExpression != null) {
      yield r'defaultValueExpression';
      yield serializers.serialize(
        object.defaultValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.titleLocation != null) {
      yield r'titleLocation';
      yield serializers.serialize(
        object.titleLocation,
        specifiedType: const FullType(QuestionTitleLocation),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.choicesVisibleIf != null) {
      yield r'choicesVisibleIf';
      yield serializers.serialize(
        object.choicesVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownbaseAllOfChoicesInner)]),
      );
    }
    if (object.showNoneItem != null) {
      yield r'showNoneItem';
      yield serializers.serialize(
        object.showNoneItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesByUrl != null) {
      yield r'choicesByUrl';
      yield serializers.serialize(
        object.choicesByUrl,
        specifiedType: const FullType(ChoicesByUrl),
      );
    }
    if (object.maxSelectedChoices != null) {
      yield r'maxSelectedChoices';
      yield serializers.serialize(
        object.maxSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    if (object.indent != null) {
      yield r'indent';
      yield serializers.serialize(
        object.indent,
        specifiedType: const FullType(QuestionIndent),
      );
    }
    if (object.valueName != null) {
      yield r'valueName';
      yield serializers.serialize(
        object.valueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.choicesOrder != null) {
      yield r'choicesOrder';
      yield serializers.serialize(
        object.choicesOrder,
        specifiedType: const FullType(SelectbaseChoicesOrder),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.commentText != null) {
      yield r'commentText';
      yield serializers.serialize(
        object.commentText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.descriptionLocation != null) {
      yield r'descriptionLocation';
      yield serializers.serialize(
        object.descriptionLocation,
        specifiedType: const FullType(QuestionDescriptionLocation),
      );
    }
    if (object.otherText != null) {
      yield r'otherText';
      yield serializers.serialize(
        object.otherText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesFromQuestion != null) {
      yield r'choicesFromQuestion';
      yield serializers.serialize(
        object.choicesFromQuestion,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.valuePropertyName != null) {
      yield r'valuePropertyName';
      yield serializers.serialize(
        object.valuePropertyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.commentPlaceholder != null) {
      yield r'commentPlaceholder';
      yield serializers.serialize(
        object.commentPlaceholder,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.separateSpecialChoices != null) {
      yield r'separateSpecialChoices';
      yield serializers.serialize(
        object.separateSpecialChoices,
        specifiedType: const FullType(bool),
      );
    }
    if (object.otherPlaceholder != null) {
      yield r'otherPlaceholder';
      yield serializers.serialize(
        object.otherPlaceholder,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.colCount != null) {
      yield r'colCount';
      yield serializers.serialize(
        object.colCount,
        specifiedType: const FullType(CheckboxbaseColCount),
      );
    }
    if (object.hideIfChoicesEmpty != null) {
      yield r'hideIfChoicesEmpty';
      yield serializers.serialize(
        object.hideIfChoicesEmpty,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Checkbox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Checkbox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Checkbox)) as $Checkbox;
  }
}

/// a concrete implementation of [Checkbox], since [Checkbox] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Checkbox implements Checkbox, Built<$Checkbox, $CheckboxBuilder> {
  $Checkbox._();

  factory $Checkbox([void Function($CheckboxBuilder)? updates]) = _$$Checkbox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CheckboxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Checkbox> get serializer => _$$CheckboxSerializer();
}

class _$$CheckboxSerializer implements PrimitiveSerializer<$Checkbox> {
  @override
  final Iterable<Type> types = const [$Checkbox, _$$Checkbox];

  @override
  final String wireName = r'$Checkbox';

  @override
  Object serialize(
    Serializers serializers,
    $Checkbox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Checkbox))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckboxBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showOtherItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showOtherItem = valueDes;
          break;
        case r'useDisplayValuesInDynamicTexts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useDisplayValuesInDynamicTexts = valueDes;
          break;
        case r'noneText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.noneText.replace(valueDes);
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        case r'bindings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bindings = valueDes;
          break;
        case r'minSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minSelectedChoices = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'choicesFromQuestionMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
          ) as SelectbaseChoicesFromQuestionMode;
          result.choicesFromQuestionMode = valueDes;
          break;
        case r'selectAllText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.selectAllText.replace(valueDes);
          break;
        case r'storeOthersAsComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeOthersAsComment = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'itemComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemComponent = valueDes;
          break;
        case r'choicesEnableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesEnableIf = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionState),
          ) as QuestionState;
          result.state = valueDes;
          break;
        case r'showSelectAllItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showSelectAllItem = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'otherErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherErrorText.replace(valueDes);
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.maxWidth.replace(valueDes);
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCommentArea = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'titleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionTitleLocation),
          ) as QuestionTitleLocation;
          result.titleLocation = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.requiredErrorText.replace(valueDes);
          break;
        case r'choicesVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesVisibleIf = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownbaseAllOfChoicesInner)]),
          ) as BuiltList<MatrixdropdownbaseAllOfChoicesInner>;
          result.choices.replace(valueDes);
          break;
        case r'showNoneItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNoneItem = valueDes;
          break;
        case r'choicesByUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChoicesByUrl),
          ) as ChoicesByUrl;
          result.choicesByUrl.replace(valueDes);
          break;
        case r'maxSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSelectedChoices = valueDes;
          break;
        case r'indent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionIndent),
          ) as QuestionIndent;
          result.indent = valueDes;
          break;
        case r'valueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueName = valueDes;
          break;
        case r'choicesOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesOrder),
          ) as SelectbaseChoicesOrder;
          result.choicesOrder = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.description.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.title.replace(valueDes);
          break;
        case r'commentText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.commentText.replace(valueDes);
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'otherText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherText.replace(valueDes);
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
          break;
        case r'choicesFromQuestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesFromQuestion = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'valuePropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valuePropertyName = valueDes;
          break;
        case r'commentPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.commentPlaceholder.replace(valueDes);
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'otherPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherPlaceholder.replace(valueDes);
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.minWidth.replace(valueDes);
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.width.replace(valueDes);
          break;
        case r'colCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckboxbaseColCount),
          ) as CheckboxbaseColCount;
          result.colCount = valueDes;
          break;
        case r'hideIfChoicesEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideIfChoicesEmpty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Checkbox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CheckboxBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

