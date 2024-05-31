import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/di/injectable.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async =>
    await getIt.init(environment: Environment.prod);
