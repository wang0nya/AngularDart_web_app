import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,
  CORE_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent {
  List<WordPair> names = generateWordPairs().take(5).toList();
  AppComponent() { print('names: $names'); }
  void generateNames() {
    names = generateWordPairs().take(5).toList();
  }
}
