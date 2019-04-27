import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

abstract class BasePresenter<ScreenStateClass extends BaseState> {
  ScreenStateClass view;
  CompositeSubscription subscriptions;

  BasePresenter(this.view);

  void dispose() {
    subscriptions.dispose();
  }
}

abstract class BaseState<ModelClass> {
  ModelClass _model;
  set model(ModelClass model) {
    mySetState(() {
      _model = model;
    });
  }

  get model {
    return _model;
  }

  void mySetState(Function() fun);
}

abstract class BaseScreenState<WidgetClass extends StatefulWidget, ModelClass,
        PresenterClass extends BasePresenter> extends State<WidgetClass>
    implements BaseState<ModelClass> {
  PresenterClass _presenter;
  PresenterClass providePresenter();

  @override
  void initState() {
    super.initState();
    _presenter = providePresenter();
  }

  @override
  void dispose() {
    super.dispose();
    _presenter.dispose();
  }

  @override
  void mySetState(Function fun) {
    setState(() {
      fun();
    });
  }
}
