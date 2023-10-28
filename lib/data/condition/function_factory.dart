/*****
class FunctionFactory {
  public static

  Instance

      :

  FunctionFactory

  =

  new

  FunctionFactory();

  //private functionHash: HashTable<(params: any[]) => any> = {};
  Map _functionHash = new Map();

  public register

  (

  name

      :

  string

  ,

  func

      :

  (

  params

      :

  any

  [

  ]

  )

  =>

  any

  ) {
  this.functionHash[name] = func;
  }
  void unregister(String name) {
    this._functionHash.remove(name);
  }

  void clear() {
    this._functionHash.clear();
  }

  List<String> getAll() {
    /// TODO: sort is needed here
    return this._functionHash.keys;
  }

  dynamic run(String name, List params, Map properties) {
    var func = this._functionHash[name];
    if (func == null) return null;
    var classRunner = {
      func: func
    };

    if (properties != null) {
      for (var key in properties.keys) {
        (classRunner)[key] = properties[key];
      }
    }
    return classRunner.func(params);
  }
}

function sum(params: any[]): any {
var res = 0;
for (var i = 0; i < params.length; i++) {
res += params[i];
}
return res;
}
FunctionFactory.Instance.register("sum", sum);

function avg(params: any[]): any {
var res = 0;
for (var i = 0; i < params.length; i++) {
res += params[i];
}
return params.length > 0 ? res / params.length : 0;
}
FunctionFactory.Instance.register("avg", avg);

function sumInArray(params: any[]): any {
if (params.length != 2) return 0;
var arr = params[0];
if (!Array.isArray(arr)) return;
var name = params[1];
if (typeof name !== "string" && !(name instanceof String)) return 0;
var res = 0;
for (var i = 0; i < arr.length; i++) {
var item = arr[i];
if (item && item[<string>name]) {
res += item[<string>name];
}
}
return res;
}
FunctionFactory.Instance.register("sumInArray", sumInArray);

function iif(params: any[]): any {
if (!params && params.length !== 3) return "";
return params[0] ? params[1] : params[2];
}
FunctionFactory.Instance.register("iif", iif);

function age(params: any[]): any {
if (!params && params.length < 1) return null;
if (!params[0]) return null;
var birthDay = new Date(params[0]);
var ageDifMs = Date.now() - birthDay.getTime();
var ageDate = new Date(ageDifMs); // miliseconds from epoch
return Math.abs(ageDate.getUTCFullYear() - 1970);
}
FunctionFactory.Instance.register("age", age);

function isContainerReady(params: any[]): any {
if (!params && params.length < 1) return false;
if (!params[0] || !this.survey) return false;
var name = params[0];
var container = this.survey.getPageByName(name);
if (!container) container = this.survey.getPanelByName(name);
if (!container) return false;
var questions = container.questions;
for (var i = 0; i < questions.length; i++) {
if (questions[i].hasErrors(false)) return false;
}
return true;
}
FunctionFactory.Instance.register("isContainerReady", isContainerReady);

function isDisplayMode() {
  return this.survey && this.survey.isDisplayMode;
}
FunctionFactory.Instance.register("isDisplayMode", isDisplayMode);

function currentDate() {
  return new Date();
}
FunctionFactory.Instance.register("currentDate", currentDate);
****/
