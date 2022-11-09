import 'package:flutter_7_11/reposerty/repo.dart';
import 'package:flutter_7_11/user/user.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  saveData(User user) async {
    return _repository.insertData("mytable", user.userMap());
  }

  readAllData() {
    return _repository.readData("mytable");
  }

  updateData(User user) {
    return _repository.updateData("mytable", user.userMap());
  }

  deleteData(userid) {
    return _repository.deleteData("mytable", userid);
  }
}
