import 'package:flutter_7_11/reposerty/repo.dart';
import 'package:flutter_7_11/user/user.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  saveData(User user) async {
    return await _repository.insertData("user", user.userMap());
  }

  readAllData() async {
    return await _repository.readData("user");
  }

  updateData(User user) async {
    return await _repository.updateData("user", user.userMap());
  }

  deleteData(userid) async {
    return await _repository.deleteData("user", userid);
  }
}
