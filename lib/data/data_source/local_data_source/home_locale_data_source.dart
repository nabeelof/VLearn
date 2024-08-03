import 'package:vlearn_test/core/data/data_source/base_local_data_source.dart';

abstract class HomeLocalDataSource extends BaseLocalDataSourceImpl {
  HomeLocalDataSource({required super.sharedPreferences});
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  HomeLocalDataSourceImp({required super.sharedPreferences});
}
