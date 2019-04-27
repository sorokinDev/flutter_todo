import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_todo/data/model/task.dart';

part 'task_list_model.g.dart';

abstract class TaskListModel
    implements Built<TaskListModel, TaskListModelBuilder> {
  BuiltList<Task> get tasks;

  TaskListModel._();
  factory TaskListModel([updates(TaskListModelBuilder b)]) = _$TaskListModel;
}