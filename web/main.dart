import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:angular_app/app_component.template.dart' as ng;

import 'main.template.dart' as self;


@GenerateInjector([
  routerProvidersHash, // you can use routeProviders in production
  //  ClassProvider(Client, useClass: InMemoryDataService),
  
  // Using real back-end ?
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
