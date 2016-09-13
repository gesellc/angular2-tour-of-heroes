import 'package:angular2/core.dart';

import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <h2>My Heroes</h2>
      <ul class="heroes">
        <li *ngFor="let hero of heroes"
          [class.selected]="hero == selectedHero"
          (click)="onSelect(hero)">
          <!-- // The (*) prefix to ngFor indicates that the <li> element and its children constitute a master template. -->
          <!-- property binding, a binding in which data flows one way from the data source (the expression hero == selectedHero) to a property of class -->
          <span class="badge">{{hero.id}}</span> {{hero.name}}
        </li>
      </ul>
      <my-hero-detail [hero]="selectedHero"></my-hero-detail>
    ''',
    styles: const [
      '''
      .selected {
        background-color: #CFD8DC !important;
        color: white;
      }
      .heroes {
        margin: 0 0 2em 0;
        list-style-type: none;
        padding: 0;
        width: 10em;
      }
      .heroes li {
        cursor: pointer;
        position: relative;
        left: 0;
        background-color: #EEE;
        margin: .5em;
        padding: .3em 0em;
        height: 1.6em;
        border-radius: 4px;
      }
      .heroes li.selected:hover {
        color: white;
      }
      .heroes li:hover {
        color: #607D8B;
        background-color: #EEE;
        left: .1em;
      }
      .heroes .text {
        position: relative;
        top: -3px;
      }
      .heroes .badge {
        display: inline-block;
        font-size: small;
        color: white;
        padding: 0.8em 0.7em 0em 0.7em;
        background-color: #607D8B;
        line-height: 1em;
        position: relative;
        left: -1px;
        top: -4px;
        height: 1.8em;
        margin-right: .8em;
        border-radius: 4px 0px 0px 4px;
      }
    '''
    ],
    directives: const [HeroDetailComponent],
    providers: const [HeroService]
    )
class AppComponent {

  String title = 'Tour of Heroes';
  Hero selectedHero;
  List<Hero> heroes;
  final HeroService _heroService;

  AppComponent(this._heroService);

  void onSelect(Hero hero) {
    selectedHero = hero;
  }

  void getHeroes() {
    heroes = _heroService.getHeroes();
  }
}

// TODO: Learn more about interpolation in the Displaying Data chapter. https://angular.io/docs/dart/latest/guide/displaying-data.html
// TODO: Learn more about ngModel in the Forms and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/forms.html#ngModel https://angular.io/docs/dart/latest/guide/template-syntax.html#ngModel
// TODO: Learn more about ngFor and template input variables in the Displaying Data and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/displaying-data.html#ngFor https://angular.io/docs/dart/latest/guide/template-syntax.html#ngFor
// TODO: Learn more about Event Binding in the User Input and Templating Syntax chapters. https://angular.io/docs/dart/latest/guide/user-input.html https://angular.io/docs/dart/latest/guide/template-syntax.html#event-binding
// TODO: Learn more about ngIf, ngFor and other structural directives in the Structural Directives and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/structural-directives.html https://angular.io/docs/dart/latest/guide/template-syntax.html#directives
// TODO: Learn more about property bindings in the Template Syntax chapter. https://angular.io/docs/dart/latest/guide/template-syntax.html#property-binding
// TODO: Learn more about Dependency Injection in the Dependency Injection chapter. https://angular.io/docs/dart/latest/guide/dependency-injection.html
