// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskListModel extends TaskListModel {
  @override
  final BuiltList<Task> tasks;

  factory _$TaskListModel([void Function(TaskListModelBuilder) updates]) =>
      (new TaskListModelBuilder()..update(updates)).build();

  _$TaskListModel._({this.tasks}) : super._() {
    if (tasks == null) {
      throw new BuiltValueNullFieldError('TaskListModel', 'tasks');
    }
  }

  @override
  TaskListModel rebuild(void Function(TaskListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskListModelBuilder toBuilder() => new TaskListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskListModel && tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskListModel')..add('tasks', tasks))
        .toString();
  }
}

class TaskListModelBuilder
    implements Builder<TaskListModel, TaskListModelBuilder> {
  _$TaskListModel _$v;

  ListBuilder<Task> _tasks;
  ListBuilder<Task> get tasks => _$this._tasks ??= new ListBuilder<Task>();
  set tasks(ListBuilder<Task> tasks) => _$this._tasks = tasks;

  TaskListModelBuilder();

  TaskListModelBuilder get _$this {
    if (_$v != null) {
      _tasks = _$v.tasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskListModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TaskListModel;
  }

  @override
  void update(void Function(TaskListModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskListModel build() {
    _$TaskListModel _$result;
    try {
      _$result = _$v ?? new _$TaskListModel._(tasks: tasks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
