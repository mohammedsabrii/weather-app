import 'package:go_router/go_router.dart';
import 'package:weather/features/details/views/weather_details_view.dart';
import 'package:weather/features/home/presentation/views/home_view.dart';
import 'package:weather/features/search/presentation/views/search_view.dart';
import 'package:weather/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const khomeView = '/HomeView';
  static const kdetailsview = '/WeatherDetailsView';
  static const ksearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const WeatherAppHomeView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kdetailsview,
        builder: (context, state) => const WeatherDetailesView(),
      )
    ],
  );
}
