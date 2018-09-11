
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import '../crisis.dart';
import '../crisis_service.dart';
import '../../route_paths.dart';

@Component(
  selector: 'my-crisis',
  templateUrl: 'crisis_component.html',
  styleUrls: ['crisis_component.css'],
  directives: [coreDirectives, formDirectives],
)
class CrisisComponent implements OnActivate {
  Crisis crisis;
  final CrisisService _crisisService;
  // final Location _location;
  final Router _router;

  CrisisComponent(this._crisisService, this._router);

  @override
  void onActivate(_, RouterState current) async {
    final id = getId(current.parameters);
    if (id != null) crisis = await (_crisisService.get(id));
  }

  Future<NavigationResult> goBack() => _router.navigate(
    RoutePaths.crises.toUrl(),
    NavigationParams(queryParameters: {idParam: '${crisis.id}'}));
}
