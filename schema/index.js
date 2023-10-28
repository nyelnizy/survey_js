// The original surveyjs json schema is so fucked up, so we need to fix it ourselves

import Survey from "survey-core";
import * as fs from "fs";
import _ from "lodash";

let schema = Survey.Serializer.generateSchema();

fs.writeFile(
  "surveyjs_raw.json",
  JSON.stringify(schema, undefined, 2),
  function (err) {
    if (err) {
      return console.log(err);
    }
    console.log("The raw file was saved!");
  }
);

//https://surveyjs.io/form-library/documentation/api-reference/survey-data-model#showQuestionNumbers
const oldShowQuestionNumbers = {
  type: "string",
  enum: ["on", "onPage", "off"],
};
const newShowQuestionNumbers = {
  anyOf: [
    {
      type: "boolean",
    },
    {
      type: "string",
      enum: ["on", "onPage", "off"],
    },
  ],
};
const replace = (target) =>
  _.forIn(target, (value, key, object) => {
    if (
      key === "showQuestionNumbers" &&
      _.isEqual(value, oldShowQuestionNumbers)
    ) {
      _.set(object, key, newShowQuestionNumbers);
    }
    if (_.isObject(value)) {
      replace(value);
    }
  });
replace(schema);

const allElements = {
  anyOf: [
    { $ref: "#/components/schemas/checkbox" },
    { $ref: "#/components/schemas/tagbox" },
    { $ref: "#/components/schemas/ranking" },
    { $ref: "#/components/schemas/radiogroup" },
    { $ref: "#/components/schemas/imagepicker" },
    { $ref: "#/components/schemas/buttongroup" },
    { $ref: "#/components/schemas/dropdown" },
    { $ref: "#/components/schemas/matrixdropdownbase" },
    { $ref: "#/components/schemas/matrixdropdown" },
    { $ref: "#/components/schemas/matrixdynamic" },
    { $ref: "#/components/schemas/matrix" },
    { $ref: "#/components/schemas/expression" },
    { $ref: "#/components/schemas/textbase" },
    { $ref: "#/components/schemas/text" },
    { $ref: "#/components/schemas/comment" },
    { $ref: "#/components/schemas/multipletext" },
    { $ref: "#/components/schemas/nonvalue" },
    { $ref: "#/components/schemas/html" },
    { $ref: "#/components/schemas/image" },
    { $ref: "#/components/schemas/empty" },
    { $ref: "#/components/schemas/file" },
    { $ref: "#/components/schemas/rating" },
    { $ref: "#/components/schemas/boolean" },
    { $ref: "#/components/schemas/signaturepad" },
    { $ref: "#/components/schemas/paneldynamic" },
    { $ref: "#/components/schemas/panel" },
    //unsupported fallback
    { $ref: "#/components/schemas/elementbase" },
  ],
};

const allTriggers = {
  type: "array",
  items: {
    anyOf: [
      { $ref: "#/components/schemas/visibletrigger" },
      { $ref: "#/components/schemas/completetrigger" },
      { $ref: "#/components/schemas/setvaluetrigger" },
      { $ref: "#/components/schemas/copyvaluetrigger" },
      { $ref: "#/components/schemas/skiptrigger" },
      { $ref: "#/components/schemas/runexpressiontrigger" },
      //unsupported fallback
      { $ref: "#/components/schemas/surveytrigger" },
    ],
  },
};
const allValidators = {
  type: "array",
  items: {
    anyOf: [
      { $ref: "#/components/schemas/numericvalidator" },
      { $ref: "#/components/schemas/textvalidator" },
      { $ref: "#/components/schemas/answercountvalidator" },
      { $ref: "#/components/schemas/regexvalidator" },
      { $ref: "#/components/schemas/emailvalidator" },
      { $ref: "#/components/schemas/expressionvalidator" },
      //unsupported fallback
      { $ref: "#/components/schemas/surveyvalidator" },
    ],
  },
};

schema["properties"]["questions"]["items"] = allElements;

schema["properties"]["triggers"] = allTriggers;
schema["definitions"]["panelbase"]["properties"]["elements"]["items"] =
  allElements;

// schema["definitions"]["question"]["properties"]["validators"] = {
//   $ref: "#surveyvalidator",
// };

// schema["definitions"]["matrixdropdowncolumn"]["properties"]["validators"] = {
//   $ref: "#surveyvalidator",
// };
// schema["definitions"]["multipletextitem"]["properties"]["validators"] = {
//   $ref: "#surveyvalidator",
// };

schema["definitions"]["paneldynamic"]["allOf"][1]["properties"][
  "templateElements"
]["items"] = allElements;

// add elementbase property to question and panelbase
{
  const { properties, ...rest } = schema["definitions"]["question"];
  schema["definitions"]["question"] = {
    ...rest,
    allOf: [{ $ref: "#elementbase" }, { properties }],
  };
}
{
  const { properties, ...rest } = schema["definitions"]["panelbase"];
  schema["definitions"]["panelbase"] = {
    ...rest,
    allOf: [{ $ref: "#elementbase" }, { properties }],
  };
}

//TODO remove to fix dart code generation enum duplication temporarily
delete schema["definitions"]["matrixdropdowncolumn"]["properties"]["colCount"];

const { definitions, type, properties, ...rest } = schema;
//generate openapi docs
let openapi = {
  openapi: "3.0.0",
  info: {
    title: "For codegen",
    version: "1.0.0",
  },
  paths: {
    "/schema": {
      get: {
        description: "return survey json schema",
        responses: {
          200: {
            description: "return survey json schema",
            content: {
              "application/json": {
                schema: {
                  $ref: "#/components/schemas/survey",
                },
              },
            },
          },
        },
      },
    },
  },
  components: {
    schemas: {
      survey: {
        type,
        properties,
      },
      ...definitions,
      elementbase: {
        type: "object",
        properties: {
          type: {
            type: "string",
          },
          name: {
            type: "string",
          },
        },
      },
      anyvalue: {},
      imageitemvalue: {
        type: "object",
        $id: "#imageitemvalue",
        allOf: [
          {
            $ref: "#itemvalue",
          },
          {
            properties: {
              imageLink: {
                type: "string",
              },
            },
          },
        ],
      },
      buttongroupitemvalue: {
        type: "object",
        $id: "#buttongroupitemvalue",
        allOf: [
          {
            $ref: "#itemvalue",
          },
          {
            properties: {
              showCaption: {
                type: "boolean",
              },
              iconName: {
                type: "string",
              },
              iconSize: {
                type: "number",
              },
            },
          },
        ],
      },
    },
  },
};

const allEnumDefinitions = {};
const getEnumName = (accessPath) => {
  return accessPath
    .filter((p) => p !== "allOf" && p != "0" && p != "1" && p !== "properties")
    .reduce((a, b) => {
      if (a === "") {
        return b;
      }
      if (b == "textUpdateMode" || b == "autocomplete") {
        return b;
      }
      return a + b.charAt(0).toUpperCase() + b.slice(1);
    }, "");
};

//fix bug for openapigenerator enum hanlding
const findAndReplaceAllEnums = (target, accessPath) => {
  _.forIn(target, (value, key, object) => {
    if (key === "enum") {
      const { type, enum: e } = object;
      const name = getEnumName(accessPath);
      delete object["enum"];
      delete object["type"];
      object["$ref"] = "#/components/schemas/" + name;
      allEnumDefinitions[name] = {
        type,
        enum: e,
      };
      if (
        Array.isArray(e) &&
        e.findIndex((p) => (_.get(p, "text") ?? p) === "name") >= 0
      ) {
        allEnumDefinitions[name]["x-enum-values"] = e.map((p) => {
          return {
            numericValue: _.get(p, "value") ?? p,
            identifier: _.get(p, "text") ?? (p == "name" ? "namee" : p),
            description: _.get(p, "text") ?? (p == "name" ? "namee" : p),
          };
        });
      }
    }
    if (_.isObject(value)) {
      findAndReplaceAllEnums(value, [...accessPath, key]);
    }
  });
};
findAndReplaceAllEnums(openapi["components"]["schemas"], []);
openapi["components"]["schemas"] = {
  ...openapi["components"]["schemas"],
  ...allEnumDefinitions,
};

const choices = {
  type: "array",
  items: {
    anyOf: [
      { $ref: "#/components/schemas/itemvalue" },
      { $ref: "#/components/schemas/imageitemvalue" },
      { $ref: "#/components/schemas/buttongroupitemvalue" },
      { $ref: "#/components/schemas/anyvalue" },
    ],
  },
};

const fix = (target) =>
  _.forIn(target, (value, key, object) => {
    //fix some shit property
    if (key === "validators") {
      object[key] = allValidators;
    }
    if (key === "clearIfInvisible") {
      object[key] = {
        $ref: "#/components/schemas/questionClearIfInvisible",
      };
    }
    if (key === "titleLocation") {
      object[key] = {
        $ref: "#/components/schemas/questionTitleLocation",
      };
    }
    if (key === "storeOthersAsComment") {
      object[key] = {
        type: "boolean",
      };
    }

    if (key === "choices") {
      object["choices"] = choices;
    }
    if (key === "defaultValue") {
      object[key] = {
        $ref: "#/components/schemas/anyvalue",
      };
    }
    if (key === "colCount") {
      object[key] = {
        $ref: "#/components/schemas/checkboxbaseColCount",
      };
    }
    if (key === "correctAnswer") {
      object[key] = {
        $ref: "#/components/schemas/anyvalue",
      };
    }
    if (key === "showCommentArea") {
      object[key] = {
        type: "boolean",
      };
    }

    if (
      key.toLowerCase().endsWith("width") ||
      key.toLowerCase().endsWith("height") ||
      key === "min" ||
      key === "max"
    ) {
      object[key] = {
        title: "StringOrNum",
        oneOf: [{ type: "string" }, { type: "number" }],
      };
    }

    //fix ref
    if (
      key === "$ref" &&
      _.startsWith(value, "#") &&
      !_.startsWith(value, "#/components/schemas/")
    ) {
      let v = value;
      if (v.startsWith("#/definitions/")) {
        v = _.replace(v, "#/definitions/", "#/components/schemas/");
      } else if (v.startsWith("#")) {
        v = _.replace(v, "#", "#/components/schemas/");
      }
      _.set(object, key, v);

      if (v === "#/components/schemas/string") {
        delete object[key];
        _.set(object, "type", "string");
      }
    }

    //remove id
    if (key === "$id") {
      delete object["$id"];
    }
    //remove empty enum
    if (key === "enum" && _.isEmpty(value)) {
      delete object["enum"];
    }

    if (_.isObject(value)) {
      fix(value);
    }
  });
fix(openapi);

// openapi["components"]["schemas"]["textUpdateMode"] = {
//   type: "string",
//   enum: ["default", "onBlur", "onTyping"],
// };
openapi["components"]["schemas"]["trigger"]["properties"]["type"] = {
  type: "string",
};
openapi["components"]["schemas"]["surveyvalidator"]["properties"]["type"] = {
  type: "string",
};
openapi["components"]["schemas"]["panelbase"]["allOf"][1]["properties"][
  "questions"
] = {
  type: "array",
  items: allElements,
};
openapi["components"]["schemas"]["visibletrigger"]["allOf"][1]["properties"][
  "questions"
] = {
  type: "array",
  items: {
    type: "string",
  },
};
openapi["components"]["schemas"]["itemvalue"]["properties"]["value"] = {
  $ref: "#/components/schemas/anyvalue",
};

const itemvalues = {
  type: "array",
  items: {
    anyOf: [
      { $ref: "#/components/schemas/itemvalue" },
      { $ref: "#/components/schemas/anyvalue" },
    ],
  },
};
openapi["components"]["schemas"]["matrixdropdown"]["allOf"][1]["properties"][
  "rows"
] = itemvalues;

openapi["components"]["schemas"]["matrixdropdowncolumn"]["allOf"] = [
  { $ref: "#/components/schemas/dropdown" },
  { $ref: "#/components/schemas/checkbox" },
  { $ref: "#/components/schemas/radiogroup" },
  { $ref: "#/components/schemas/tagbox" },
  { $ref: "#/components/schemas/text" },
  { $ref: "#/components/schemas/comment" },
  { $ref: "#/components/schemas/boolean" },
  { $ref: "#/components/schemas/expression" },
  { $ref: "#/components/schemas/rating" },
  {
    properties:
      openapi["components"]["schemas"]["matrixdropdowncolumn"]["properties"],
  },
];

delete openapi["components"]["schemas"]["matrixdropdowncolumn"]["properties"];

openapi["components"]["schemas"]["matrix"]["allOf"][1]["properties"]["rows"] =
  itemvalues;
openapi["components"]["schemas"]["matrix"]["allOf"][1]["properties"][
  "columns"
] = itemvalues;
(openapi["components"]["schemas"]["matrix"]["allOf"][1]["properties"]["cells"] =
  { $ref: "#/components/schemas/anyvalue" }),
  (openapi["components"]["schemas"]["rating"]["allOf"][1]["properties"][
    "rateValues"
  ] = itemvalues);

fs.writeFile(
  "surveyjs.json",
  JSON.stringify(openapi, undefined, 2),
  function (err) {
    if (err) {
      return console.log(err);
    }
    console.log("The file was saved!");
  }
);
