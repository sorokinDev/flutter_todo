import 'dart:async';
import 'dart:io';

import 'package:flutter_todo/data/model/task.dart';
import 'package:built_collection/built_collection.dart';
import 'package:rxdart/rxdart.dart';

abstract class TaskRepository {
  Future addTask(Task task);
  Stream<BuiltList<Task>> getTasks();
}

class ReactiveTaskRepository extends TaskRepository {

  BehaviorSubject<BuiltList<Task>> _subjectTasks;

  ReactiveTaskRepository(BuiltList<Task> initTasks){
    this._subjectTasks = BehaviorSubject();
    this._subjectTasks.value = initTasks;
  }


  @override
  Future addTask(Task task) {
    return Future.delayed(Duration(milliseconds: 1000), () {
      _subjectTasks.add(_subjectTasks.value.rebuild((lb) => lb.add(task)));
    });
  }

  @override
  Stream<BuiltList<Task>> getTasks() {
    return _subjectTasks.stream;
  }

}
/*
class ReactiveTasksRepository {
  BuiltList<Task> tasks = BuiltList();

  TasksRepository();

  Future<BuiltList<Task>> loadTasks() async {
    return Future.delayed(Duration(milliseconds: 200), () => tasks);
  }

  Future<Task> loadTaskById(int id) async {
    return Future.delayed(Duration(milliseconds: 200), () {
      return tasks.firstWhere((task) => task.id == id, orElse: null);
    });
  }

  Future<void> addTask(Task task) async {
    return Future.delayed(Duration(milliseconds: 200), () {
      tasks = tasks.rebuild((l) => l.add(task));

    });
  }

}*/
