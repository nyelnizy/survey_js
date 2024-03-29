import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "matrixdynamic",
        "name": "teachersRate",
        "title": "Please rate your teachers",
        "addRowText": "Add Subject",
        "addRowLocation": "top",
        "horizontalScroll": true,
        "columnMinWidth": "120px",
        "columnColCount": 1,
        "cellType": "radiogroup",
        "choices": [
          {"value": 1, "text": "Yes"},
          {"value": 0, "text": "Sometimes"},
          {"value": -1, "text": "No"}
        ],
        "columns": [
          {
            "name": "subject",
            "cellType": "dropdown",
            "title": "Select a subject",
            "isRequired": true,
            "minWidth": "300px",
            "choices": [
              "English: American Literature",
              "English: British and World Literature",
              "Math: Consumer Math",
              "Math: Practical Math",
              "Math: Developmental Algebra",
              "Math: Continuing Algebra",
              "Math: Pre-Algebra",
              "Math: Algebra",
              "Math: Geometry",
              "Math: Integrated Mathematics",
              "Science: Physical Science",
              "Science: Earth Science",
              "Science: Biology",
              "Science: Chemistry",
              "History: World History",
              "History: Modern World Studies",
              "History: U.S. History",
              "History: Modern U.S. History",
              "Social Sciences: U.S. Government and Politics",
              "Social Sciences: U.S. and Global Economics",
              "World Languages: Spanish",
              "World Languages: French",
              "World Languages: German",
              "World Languages: Latin",
              "World Languages: Chinese",
              "World Languages: Japanese"
            ]
          },
          {"name": "explains", "title": "Clearly explains the objectives"},
          {"name": "interesting", "title": "Makes class interesting"},
          {"name": "effective", "title": "Uses class time effectively"},
          {"name": "knowledge", "title": "Knows the subject matter"},
          {
            "name": "recognition",
            "title": "Recognizes and acknowledges effort"
          },
          {"name": "inform", "title": "Keeps me informed of my progress"},
          {
            "name": "opinion",
            "title": "Encourages and accepts different opinions"
          },
          {"name": "respect", "title": "Has the respect of the student"},
          {
            "name": "cooperation",
            "title": "Encourages cooperation and participation"
          },
          {"name": "parents", "title": "Communicates with my parents"},
          {
            "name": "selfthinking",
            "title": "Encourages me to think for myself"
          },
          {
            "name": "frusturation",
            "cellType": "comment",
            "title": "Is there anything about this class that frustrates you?",
            "minWidth": "250px"
          },
          {
            "name": "likeTheBest",
            "cellType": "comment",
            "title": "What do you like best about this class and/or teacher?",
            "minWidth": "250px"
          },
          {
            "name": "improvements",
            "cellType": "comment",
            "title":
                "What do you wish this teacher would do differently that would improve this class?",
            "minWidth": "250px"
          },
          {"name": "bool", "cellType": "boolean"}
        ],
        "rowCount": 2
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = surveyFromJson(json);
  });
}
