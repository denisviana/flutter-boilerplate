import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/local/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: AppPreferences)
class AppPreferencesImplementation extends AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferencesImplementation(this._sharedPreferences);
}
