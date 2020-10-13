import 'dart:convert' show json, utf8;
import 'dart:io';
import 'dart:async';

import 'package:github_user/components/data/model.dart';

class GetUsernameAPI {
  static final HttpClient _httpClient = HttpClient();
  static final String _url = "api.github.com";

  static Future<List<User>> getUsernameWithSearchQuery() async {
    final uri = Uri.https(_url, '/search/users', {
      'q': 'Doraemon',
    });

    final jsonResponse = await _getJson(uri);
    if (jsonResponse == null) {
      return null;
    }
    if (jsonResponse['errors'] != null) {
      return null;
    }
    if (jsonResponse['items'] == null) {
      return List();
    }

    return User.mapJSONStringToList(jsonResponse['items']);
  }

  static Future<Map<String, dynamic>> _getJson(Uri uri) async {
    try {
      final httpRequest = await _httpClient.getUrl(uri);
      final httpResponse = await httpRequest.close();
      if (httpResponse.statusCode != HttpStatus.ok) {
        return null;
      }

      final responseBody = await httpResponse.transform(utf8.decoder).join();
      return json.decode(responseBody);
    } on Exception catch (e) {
      print('$e');
      return null;
    }
  }
}
