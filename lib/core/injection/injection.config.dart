// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/authentication/data/datasources/auth_datasource_impl.dart'
    as _i102;
import '../../features/authentication/data/datasources/base_auth_datasource.dart'
    as _i369;
import '../../features/authentication/data/repositories/auth_repo_impl.dart'
    as _i836;
import '../../features/authentication/domain/repositories/auth_repo.dart'
    as _i802;
import '../../features/authentication/domain/usecases/auth_usecase.imports.dart'
    as _i661;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i613;
import '../../features/home/data/datasources/checkInOut_datasource.dart'
    as _i559;
import '../../features/home/data/datasources/checkInOut_datasource_impl.dart'
    as _i628;
import '../../features/home/data/repositories/checkInOut_repo_imp.dart'
    as _i469;
import '../../features/home/domain/repositories/checkInOut_repo.dart' as _i678;
import '../../features/home/domain/usecases/checkInOut.usecase.imports.dart'
    as _i732;
import '../../features/home/presentation/bloc/check_in_out/check_in_out_bloc.dart'
    as _i1054;
import '../cache/secure_storage.dart' as _i111;
import '../cache/storage_service.dart' as _i77;
import '../environments/app_env.dart' as _i975;
import '../network/dio_helper.dart' as _i172;
import '../network/network_interface.dart' as _i490;
import '../router/router.dart' as _i285;
import 'third_party.modeule.dart' as _i952;

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
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i111.SecureStorage>(() => _i111.SecureStorage());
    gh.lazySingleton<_i975.AppEnv>(() => _i975.AppEnv());
    gh.lazySingleton<_i285.AppRouter>(() => _i285.AppRouter());
    gh.factory<_i369.BaseAuthDataSource>(() => _i102.AuthDataSourceImpl());
    gh.factory<_i802.BaseAuthRepo>(
        () => _i836.AuthRepoImpl(datasource: gh<_i369.BaseAuthDataSource>()));
    gh.factory<_i559.BaseCheckInOutDataSource>(
        () => _i628.BaseCheckInOutDataSourceImpl());
    gh.singleton<_i77.StorageService>(
        () => _i77.StorageService(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i490.BaseNetwork>(() => _i172.DioHelper());
    gh.factory<_i678.BaseCheckInOutRepo>(() => _i469.CheckinOutRepoImp(
        datasource: gh<_i559.BaseCheckInOutDataSource>()));
    gh.factory<_i661.LoginUseCase>(
        () => _i661.LoginUseCase(repository: gh<_i802.BaseAuthRepo>()));
    gh.factory<_i613.LoginBloc>(
        () => _i613.LoginBloc(loginUseCase: gh<_i661.LoginUseCase>()));
    gh.factory<_i732.CheckInOutUseCase>(
        () => _i732.CheckInOutUseCase(repo: gh<_i678.BaseCheckInOutRepo>()));
    gh.factory<_i1054.CheckInOutBloc>(() => _i1054.CheckInOutBloc(
        checkInOutUseCase: gh<_i732.CheckInOutUseCase>()));
    return this;
  }
}

class _$InjectionModule extends _i952.InjectionModule {}
