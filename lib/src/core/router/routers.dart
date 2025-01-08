import 'package:go_router/go_router.dart';
import 'package:taski_to_do/src/features/home/presentation/home_page.dart';

abstract class AppRoutes {
  static const String home = '/';
  static const String search = '/search';
  static const String create = '/create';
  static const String completed = '/completed';

  static GoRouter get routes => GoRouter(
        routes: [
          GoRoute(
            builder: (context, state) => const HomePage(),
            path: home,
          ),
        ],
      );
}
