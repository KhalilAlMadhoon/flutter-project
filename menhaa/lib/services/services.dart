import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';

String username = '';
String menhaname = '';
String uninum = '';
String? mytoken = '';

savetoken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'token';
  final value = token;
  mytoken = token;
  print('new my token ' + mytoken!);
  await prefs.setString(key, value);
}

kiltoken() async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'token';
  final value = null;
  await prefs.setString(key, value);
}

Future<List> rssToJson() async {
  var url = Uri.parse('https://cuisine-kouzina.blogspot.com/rss.xml');
  var client = http.Client();
  final myTranformer = Xml2Json();
  return await client.get(url).then((response) {
    return response.body;
  }).then((bodyString) {
    myTranformer.parse(bodyString);
    var json = myTranformer.toParker();
    print('hihihiihi' + jsonDecode(json)['rss']['channel']['item'].toString());
    return jsonDecode(json)['rss']['channel']['item'];
  });
}
