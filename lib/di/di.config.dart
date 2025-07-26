// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../core/data/helpers/secure_local_storage.dart' as _i244;
import '../core/data/local/app_preferences.dart' as _i780;
import '../core/data/local/app_preferences_implementation.dart' as _i307;
import '../core/data/network/dio_client.dart' as _i239;
import 'modules/device_module.dart' as _i766;
import 'modules/local_module.dart' as _i788;
import 'modules/remote_module.dart' as _i616;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localModule = _$LocalModule();
    final remoteModule = _$RemoteModule();
    final deviceModule = _$DeviceModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => localModule.prefs,
      preResolve: true,
    );
    gh.factory<_i361.Dio>(() => remoteModule.provideDio());
    gh.singleton<_i558.FlutterSecureStorage>(() => localModule.storage);
    gh.factory<String>(
      () => deviceModule.language,
      instanceName: 'language',
    );
    gh.factory<_i780.AppPreferences>(() =>
        _i307.AppPreferencesImplementation(gh<_i460.SharedPreferences>()));
    gh.singleton<_i361.InterceptorsWrapper>(
        () => remoteModule.provideInterceptor(
              gh<_i361.Dio>(),
              gh<String>(instanceName: 'language'),
              gh<_i558.FlutterSecureStorage>(),
            ));
    gh.factory<_i239.DioClient>(() => remoteModule.provideApi(
          gh<_i361.Dio>(),
          gh<_i361.InterceptorsWrapper>(),
        ));
    gh.singleton<_i244.SecureLocalStorage>(
        () => _i244.SecureLocalStorage(gh<_i558.FlutterSecureStorage>()));
    return this;
  }
}

class _$LocalModule extends _i788.LocalModule {}

class _$RemoteModule extends _i616.RemoteModule {}

class _$DeviceModule extends _i766.DeviceModule {}
