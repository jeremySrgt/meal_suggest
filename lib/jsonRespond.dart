import 'dart:convert';

class JsonRespond{
  final List<dynamic> resources;

  JsonRespond(this.resources);

  JsonRespond.fromJson(Map<String, dynamic> json)
      : resources = json['result']['resources'];


  List<Map<dynamic,dynamic>> getResources(){
    return resources;
  }
}