import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riyadh_kmcc_new/core/globals.dart';
import 'package:riyadh_kmcc_new/features/auth/screens/survey_screen.dart';
import 'package:riyadh_kmcc_new/features/home/screens/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils.dart';
import '../repository/auth_repository.dart';

final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    ref: ref,
  ),
);

class AuthController extends StateNotifier<bool> {
  final AuthRepository _authRepository;
  final Ref _ref;
  AuthController({required AuthRepository authRepository, required Ref ref})
      : _authRepository = authRepository,
        _ref = ref,
        super(false); // loading

  Future<dynamic> signUp({
    required BuildContext context,
    required BuildContext sheetContext,
    required String memberId,
    required String iqama,
    required String password,
    required String phoneNo,
  }) async {
    state = true;
    final user = await _authRepository.signUp(
        memberId: memberId, iqama: iqama, password: password, phoneNo: phoneNo);
    state = false;
    user.fold(
      (l) => showSnackBar(context, l.message),
      (data) {
        showSnackBar(sheetContext, "User Successfully Registered!");
        _ref.read(signInProvider.notifier).update((state) => true);
      },
    );
  }

  Future signIn({
    required BuildContext context,
    required BuildContext sheetContext,
    required String memberId,
    required String password,
  }) async {
    state = true;
    final user = await _authRepository.signIn(
      memberId: memberId,
      password: password,
    );
    state = false;
    user.fold(
      (l) => showSnackBar(context, l.message),
      (data) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        token = data['token'];
        uid = data['user']['id'].toString();
        prefs.setString("token", token);
        prefs.setString("uid", uid);
        Navigator.pop(context);
      },
    );
  }

  Future<dynamic> submitSurvey({
    required BuildContext context,
    required int surveyId,
    required int questionId,
    required String answer,
  }) async {
    state = true;
    final user = await _authRepository.submitSurvey(
      answer: answer,
      questionId: questionId,
      surveyId: surveyId,
    );
    state = false;
    return user.fold(
      (l) => showSnackBar(context, l.message),
      (data) {
        print("aaa111 ${data['data']}");

        if (data['data']['completed'] == true) {
          print("ooooooooooooooo");
        }
        return data;
      },
    );
  }

  void getPendingSurveys({
    required BuildContext context,
  }) async {
    state = true;
    final res = await _authRepository.getPendingSurveys();
    state = false;
    res.fold(
      (l) {},
      (data) async {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurveyScreen(
                survey: data,
              ),
            ));
      },
    );
  }
}
