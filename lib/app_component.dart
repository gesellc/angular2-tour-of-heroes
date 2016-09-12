import 'package:angular2/core.dart';

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}

@Component(
    selector: 'my-app',
    template: '''
        <h1>{{title}}</h1>
        <h2>My Heroes</h2>
        <ul class="heroes">
          <li *ngFor="let hero of heroes">  <!-- // The (*) prefix to ngFor indicates that the <li> element and its children constitute a master template. -->
            <span class="badge">{{hero.id}}</span> {{hero.name}}
          </li>
        </ul>
        <h2>{{hero.name}} details!</h2>
        <div><label>id: </label>{{hero.id}}</div>
        <div>
          <label>name: </label>
          <input [(ngModel)]="hero.name" placeholder="name">
        </div>''')
class AppComponent {

  String title = 'Tour of Heroes';
  //var hero = 'Windstorm';
  Hero hero = new Hero(1, 'Windstorm');
  final List<Hero> heroes = mockHeroes;
}

final List<Hero> mockHeroes = [
  new Hero(11, 'Mr. Nice'),
  new Hero(12, 'Narco'),
  new Hero(13, 'Bombasto'),
  new Hero(14, 'Celeritas'),
  new Hero(15, 'Magneta'),
  new Hero(16, 'RubberMan'),
  new Hero(17, 'Dynama'),
  new Hero(18, 'Dr IQ'),
  new Hero(19, 'Magma'),
  new Hero(20, 'Tornado')
];

// TODO: Learn more about interpolation in the Displaying Data chapter. https://angular.io/docs/dart/latest/guide/displaying-data.html
// TODO: Learn more about ngModel in the Forms and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/forms.html#ngModel https://angular.io/docs/dart/latest/guide/template-syntax.html#ngModel
// TODO: Learn more about ngFor and template input variables in the Displaying Data and Template Syntax chapters. https://angular.io/docs/dart/latest/guide/displaying-data.html#ngFor https://angular.io/docs/dart/latest/guide/template-syntax.html#ngFor
