import 'package:built_value/built_value.dart';

part 'task.g.dart';


abstract class Task implements Built<Task, TaskBuilder> {

  int get id;
  String get note;
  int get date;

  Task._();

  factory Task([void Function(TaskBuilder) updates]) = _$Task;
}