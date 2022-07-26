import 'package:order_tennis/data/api/data_source/remote/scheduler_remote_data_source.dart';
import 'package:order_tennis/data/model/scheduler_model.dart';
import 'package:order_tennis/data/repository/scheduler_repository.dart';

class SchedulerRepositoryImpl extends SchedulerRepository {
  final SchedulerRemoteDataSource schedulerRemoteDataSource;

  SchedulerRepositoryImpl(this.schedulerRemoteDataSource);

  @override
  Future<List<SchedulerModel>> getSchedulers() {
    return schedulerRemoteDataSource.getSchedulers();
  }
}
