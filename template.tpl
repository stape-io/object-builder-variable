___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Object Builder",
  "description": "Provides an interface for building objects.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "CHECKBOX",
    "name": "inside_array",
    "checkboxText": "Put object inside array",
    "simpleValueType": true,
    "help": "If checked built object will be put inside the array."
  },
  {
    "type": "LABEL",
    "name": "start",
    "displayName": "{"
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "object_data",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Property",
        "name": "property",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT"
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "end",
    "displayName": "}"
  }
]


___SANDBOXED_JS_FOR_SERVER___

const makeTableMap = require('makeTableMap');

if (!data.object_data) {
  if (data.inside_array) {
    return [{}];
  }
  
  return {};
}

let object = makeTableMap(data.object_data, 'property', 'value');

if (data.inside_array) {
  return [object];
}

return object;


___TESTS___

scenarios: []


___NOTES___

Created on 30/09/2021, 18:10:20


