import 'dart:async';
import 'dart:io';

import 'package:flutter_todo/data/model/task.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_todo/data/task_repository.dart';
import 'package:rxdart/rxdart.dart';


class TaskManager {

  TaskRepository _tasksRepo;

  TaskManager(TaskRepository tasksRepo)  :
        this._tasksRepo = tasksRepo;

  Future addTask(Task task) {
    return _tasksRepo.addTask(task);
  }

  Stream<BuiltList<Task>> getTasks() {
    return _tasksRepo.getTasks();
  }

}