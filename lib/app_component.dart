import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'heroes_component.dart';
import 'hero_service.dart';
import 'dashboard_component.dart';
import 'hero_detail_component.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <nav>
        <a [routerLink]="['Dashboard']">Dashboard</a>
        <a [routerLink]="['Heroes']">Heroes</a>
      </nav>
      <router-outlet></router-outlet>
      ''',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(path: '/dashboard', name: 'Dashboard', component: DashboardComponent, useAsDefault: true),
  const Route(path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
])
class AppComponent {
  String title = 'Tour of Heroes';
}

// TODO: The Routing and Navigation chapter covers the router in more detail than we will in this tutorial. The Routing and Navigation chapter covers the router in more detail than we will in this tutorial.
// TODO: Learn more about defining routes with @RouteConfig in the Routing chapter. https://angular.io/docs/dart/latest/guide/router.html
// TODO: Learn about the link parameters list in the Routing chapter. https://angular.io/docs/dart/latest/guide/router.html#link-parameters-array
