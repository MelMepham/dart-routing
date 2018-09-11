import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import '../crisis.dart';
import '../crisis_service.dart';
import '../dialog_service.dart';
import '../route_paths.dart';

@Component(
  selector: 'my-crisis',
  templateUrl: 'crisis_component.html',
  styleUrls: ['crisis_component.css'],
  directives: [coreDirectives, formDirectives],
)
class CrisisComponent implements OnActivate, CanNavigate {
  Crisis crisis;
  final CrisisService _crisisService;
  String name;
  final Router _router;
  final DialogService _dialogService;

  CrisisComponent(this._crisisService, this._router, this._dialogService);


Future<bool> canNavigate() async {
  return crisis?.name == name ||
      await _dialogService.confirm('Discard changes?');
}

  @override
  void onActivate(_, RouterState current) async {
    final id = getId(current.parameters);
    if (id != null) crisis = await (_crisisService.get(id));
    name = crisis?.name;
  }

  Future<void> save() async {
    crisis?.name = name;
    goBack();
  }

  Future<NavigationResult> goBack() =>
      _router.navigate(RoutePaths.home.toUrl());
}
