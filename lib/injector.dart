import 'package:get_it/get_it.dart';
import 'package:taski_to_do/src/features/shared/viewmodel/taski_bottom_sheet_view_model.dart';

final GetIt getIt = GetIt.instance;

void setupInjector() {
  // Register your dependencies here
  // Example:
  // getIt.registerSingleton<SomeService>(SomeServiceImpl());
  getIt.registerLazySingleton<TaskiBottomSheetViewModel>(TaskiBottomSheetViewModel.new);
}
