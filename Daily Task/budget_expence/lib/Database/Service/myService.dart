import 'package:budget_expence/Database/expenceModel.dart';
import 'package:budget_expence/Database/histryModel.dart';
import 'package:budget_expence/Database/incomeModel.dart';
import 'package:budget_expence/Database/repository/repository.dart';

class Myservices {
  late Repository _repository;
  Myservices() {
    _repository = Repository();
  }
  inserhistory(HistoryModel _history) async {
    return await _repository.insertHistory(
        "history", _history.HistoryModelMap());
  }

  inserExpence(ExpenceModel _expence) async {
    return await _repository.insertExpence(
        "expence", _expence.ExpenceModelMap());
  }

  insertBudgetService(incomeModel _income) async {
    return await _repository.insertBudget("income", _income.incomeModelMap());
  }

  historyGetAllBudget() async {
    return await _repository.selectMyBudget("income");
  }

  historyGetExpence() async {
    return await _repository.selectMyExpence("expence");
  }

  historyGetHistory() async {
    return await _repository.selectMyHistory("history");
  }

  deleteDataBudgetService(budgetID) async {
    return await _repository.deleteMyBudget("income", budgetID);
  }

  fetchdatabudgetService(monthname) async {
    return await _repository.fetchEntrybymonth("income", monthname);
  }
}
