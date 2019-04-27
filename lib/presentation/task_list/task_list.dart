import 'package:flutter/material.dart';
import 'package:flutter_todo/data/task_repository.dart';
import 'package:flutter_todo/domain/task_manager.dart';
import 'package:flutter_todo/presentation/base/base_contract.dart';
import 'package:flutter_todo/presentation/task_list/task_list_model.dart';


abstract class TaskListView<WidgetClass extends StatefulWidget>
    extends BaseScreenState<WidgetClass, TaskListModel, TaskListPresenter> {

  @override
  TaskListPresenter providePresenter() {
    return TaskListPresenter(this, TaskManager(ReactiveTaskRepository(null)));
  }

}

class TaskListPresenter extends BasePresenter<TaskListView> {
  TaskManager _taskManager;

  TaskListPresenter(TaskListView view, this._taskManager) : super(view);

  void observeTasks() {
    subscriptions.add(_taskManager.getTasks().listen((tasks) {
      view.model = TaskListModel((b) => b
        ..tasks = tasks.toBuilder()
      );
    }));
  }

}






























