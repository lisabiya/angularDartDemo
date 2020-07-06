import 'package:angular/angular.dart';
import 'package:webSpace/src/hero/hero_service.dart';

import 'src/hero/hero.dart';
import 'src/hero/hero_component.dart';

@Component(
  selector: 'my-app',
  template: '''
  <h1>{{title}}</h1>
<h2>Heroes</h2>
<ul class="heroes">
    <li *ngFor="let hero of heroes"
        [class.selected]="hero === selected"
        (click)="onSelect(hero)">
        <span class="badge">{{hero.id}}</span> {{hero.name}}
    </li>
</ul>
<my-hero [hero]="selected"></my-hero>
  ''',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [heroServiceProvider],
)
class AppComponent implements OnInit {
  final title = 'Tour of Heroes';
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);


  void _getHeroes() {
    _heroService.getAllSlowly().then((value) => heroes = value);
  }

  @override
  void ngOnInit() {
    _getHeroes();
  }

  void onSelect(Hero hero) => selected = onMySelect(hero);
}

Hero onMySelect(Hero hero) {
  print(hero.name);
  return hero;
}
