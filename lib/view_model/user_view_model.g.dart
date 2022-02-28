// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$userAtom = Atom(name: '_UserViewModelBase.user');

  @override
  List<UserModel> get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(List<UserModel> value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$pageStateAtom = Atom(name: '_UserViewModelBase.pageState');

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  final _$getAllUserAsyncAction = AsyncAction('_UserViewModelBase.getAllUser');

  @override
  Future<void> getAllUser() {
    return _$getAllUserAsyncAction.run(() => super.getAllUser());
  }

  @override
  String toString() {
    return '''
user: ${user},
pageState: ${pageState}
    ''';
  }
}
