import 'package:workout_application/index.dart';

class WorkoutAppRepository {
  final WorkoutAppProvider _workoutAppProvider = WorkoutAppProvider();

  WorkoutAppRepository();

  void test(bool isError) {
    _workoutAppProvider.test(isError);
  }
}