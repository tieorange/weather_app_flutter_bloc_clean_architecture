import '../../domain/repositories/home_page_repository.dart';
import '../datasource/home_page_remote_source.dart';

class HomePageRepositoryImpl implements HomePageRepository {
  final HomePageRemoteSource remoteSource;

  HomePageRepositoryImpl({required this.remoteSource});
}
