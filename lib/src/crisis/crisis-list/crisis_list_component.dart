import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../routes.dart';

import '../crisis.dart';
import '../crisis_service.dart';

@Component(
    selector: 'my-crises',
    templateUrl: 'crisis_list_component.html',
    styleUrls: ['crisis_list_component.css'],
    directives: [coreDirectives, RouterOutlet],
    pipes: [commonPipes],
    exports: [RoutePaths, Routes],
    providers: [ClassProvider(CrisisService)])

class CrisisListComponent implements OnActivate {
  final CrisisService _crisisService;
  final Router _router;
  List<Crisis> crises;
  Crisis selected;

  CrisisListComponent(this._crisisService, this._router);

  Future<void> _getCrises() async {
    crises = await _crisisService.getAll();
  }

  @override
  void onActivate(_, RouterState current) async {
    await _getCrises();
    selected = _select(current);
  }

  Crisis _select(RouterState routerState) {
    final id = getId(routerState.parameters);
    return id == null
        ? null
        : crises.firstWhere((e) => e.id == id, orElse: () => null);
  }

  void onSelect(Crisis crisis) => _gotoDetail(crisis.id);

  String _crisisUrl(int id) => RoutePaths.crisis.toUrl(parameters: {idParam: '$id'});


  Future<NavigationResult> _gotoDetail(int id) =>
      _router.navigate(_crisisUrl(id));
}
