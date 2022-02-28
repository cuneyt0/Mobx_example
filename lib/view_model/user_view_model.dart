import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_mvvmobx/model/User.dart';
import 'package:mobx/mobx.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store {
  final url = "https://jsonplaceholder.typicode.com/users";
  @observable
  List<UserModel> user = [];
  @observable
  PageState pageState = PageState.NORMAL;
  @action
  Future<void> getAllUser() async {
    pageState = PageState.LOADING;
    try {
      final response = await Dio().get(url);
      if (response.statusCode == HttpStatus.ok) {
        final responseData = response.data as List;
        user = responseData.map((e) => UserModel.fromJson(e)).toList();
      }
      pageState = PageState.SUCCESS;
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }
}

enum PageState { NORMAL, LOADING, SUCCESS, ERROR }
