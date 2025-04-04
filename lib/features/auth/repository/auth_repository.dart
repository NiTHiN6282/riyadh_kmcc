import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riyadh_kmcc_new/core/globals.dart';

import '../../../core/failure.dart';
import '../../../core/type_defs.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(),
);

class AuthRepository {
  AuthRepository();

  FutureVoid signUp({
    required String memberId,
    required String iqama,
    required String password,
    required String phoneNo,
  }) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST', Uri.parse('http://mytest.igniteway.in/api/auth/signup'));
      request.body = json.encode({
        "memberId": memberId,
        "iqamaNumber": iqama,
        "phoneNumber": phoneNo,
        "password": password
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      var jsonData = await response.stream.bytesToString();
      var data = jsonDecode(jsonData);
      print(data);
      if (response.statusCode == 201) {
        return right("");
      } else {
        print(data['message']);
        return left(Failure(data['message']));
      }
    } catch (e) {
      print(e);
      return left(Failure(e.toString()));
    }
  }

  FutureEither<dynamic> signIn({
    required String memberId,
    required String password,
  }) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST', Uri.parse('http://mytest.igniteway.in/api/auth/signin'));
      request.body =
          json.encode({"identifier": memberId, "password": password});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      var jsonData = await response.stream.bytesToString();
      var decodeData = jsonDecode(jsonData);
      print(decodeData);
      if (response.statusCode == 200) {
        return right(decodeData['data']);
      } else {
        print(decodeData['message']);
        return left(Failure(decodeData['message']));
      }
    } catch (e) {
      print(e);
      return left(Failure(e.toString()));
    }
  }

  FutureEither<dynamic> getPendingSurveys() async {
    try {
      var headers = {'Authorization': 'Bearer $token'};
      var request = http.MultipartRequest(
          'GET', Uri.parse('http://mytest.igniteway.in/api/survey/pending'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      var jsonData = await response.stream.bytesToString();

      var decodeData = jsonDecode(jsonData);

      print(decodeData);

      if (response.statusCode == 200) {
        if (decodeData['message'] == "Pending survey found") {
          return right(decodeData);
        } else {
          return left(Failure(decodeData['message']));
        }
      } else {
        print(response.reasonPhrase);
        return left(Failure(""));
      }
    } catch (e) {
      print(e);
      return left(Failure(e.toString()));
    }
  }

  FutureEither<dynamic> submitSurvey({
    required int questionId,
    required int surveyId,
    required String answer,
  }) async {
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': "Bearer $token",
      };
      var request = http.Request(
          'POST', Uri.parse('http://mytest.igniteway.in/api/survey/submit'));
      request.body = json.encode({
        "surveyId": surveyId,
        "questionId": questionId,
        "answer": answer,
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      var jsonData = await response.stream.bytesToString();

      var decodeData = jsonDecode(jsonData);

      print(decodeData);

      return right(decodeData);
    } catch (e) {
      print(e);
      return left(Failure(e.toString()));
    }
  }
}
