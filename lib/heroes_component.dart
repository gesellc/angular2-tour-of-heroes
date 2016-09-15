import 'package:angular2/core.dart';
import 'dart:async';

import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';

@Component(
    selector: 'my-heroes',
    templateUrl: 'heroes_componentqqqq.html',
    styleUrls: const ['heroes_component.css'],
    directives: const [HeroDetailComponent],
    )
class HeroesComponent implements OnInit {

  Hero selectedHero;
  List<Hero> heroes;
  final HeroService _heroService;

  HeroesComponent(this._heroService/*, this._router*/); // this router has been introduced too early

  void onSelect(Hero hero) {
    selectedHero = hero;
  }

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  void ngOnInit() {
    getHeroes();
  }
}

// TODO: Learn more about interpolation in the Displaying Data chapter. https://angular.io/docs/dart/latest/guide/displaying-data.html
// TODO: Learn more about ngModel in the Forms and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/forms.html#ngModel https://angular.io/docs/dart/latest/guide/template-syntax.html#ngModel
// TODO: Learn more about ngFor and template input variables in the Displaying Data and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/displaying-data.html#ngFor https://angular.io/docs/dart/latest/guide/template-syntax.html#ngFor
// TODO: Learn more about Event Binding in the User Input and Templating Syntax chapters. https://angular.io/docs/dart/latest/guide/user-input.html https://angular.io/docs/dart/latest/guide/template-syntax.html#event-binding
// TODO: Learn more about ngIf, ngFor and other structural directives in the Structural Directives and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/structural-directives.html https://angular.io/docs/dart/latest/guide/template-syntax.html#directives
// TODO: Learn more about property bindings in the Template Syntax chapter. https://angular.io/docs/dart/latest/guide/template-syntax.html#property-binding
// TODO: Learn more about Dependency Injection in the Dependency Injection chapter. https://angular.io/docs/dart/latest/guide/dependency-injection.html
// TODO: Learn more about lifecycle hooks in the Lifecycle Hooks chapter. https://angular.io/docs/dart/latest/guide/lifecycle-hooks.html
// TODO: We are simplifying in this Tutorial. Learn about Futures in the tutorial Asynchronous Programming: Futures. https://www.dartlang.org/docs/tutorials/futures/
// TODO: Learn about pipes in the Pipes chapter. https://angular.io/docs/dart/latest/guide/pipes.html