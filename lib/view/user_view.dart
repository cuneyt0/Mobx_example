import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mvvmobx/view_model/user_view_model.dart';

class UserView extends StatelessWidget {
  final title = "Users";
  final _userviewModel = UserViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Observer(
        builder: ((_) {
          switch (_userviewModel.pageState) {
            case PageState.LOADING:
              return Center(child: CircularProgressIndicator());
            case PageState.SUCCESS:
              return ListviewBuilderUser();
            case PageState.ERROR:
              return Center(child: Text("Hata ile karşılaşıldı"));
            default:
              return Center(
                  child: FlutterLogo(
                size: MediaQuery.of(context).size.height * 0.10,
              ));
          }
        }),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: (() => _userviewModel.getAllUser())),
    );
  }

  ListView ListviewBuilderUser() {
    return ListView.builder(
      itemCount: _userviewModel.user.length,
      itemBuilder: (context, index) {
        return ListviewbuilderListTile(index);
      },
    );
  }

  ListTile ListviewbuilderListTile(int index) {
    return ListTile(
      title: Text(
        _userviewModel.user[index].name.toString(),
      ),
      subtitle: Text(_userviewModel.user[index].website.toString()),
    );
  }
}
