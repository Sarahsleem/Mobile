
import 'package:bookly_application/Features/home/presenations/views/film_details_view.dart';
import 'package:bookly_application/Features/login/presentation/view_models/views/login_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/home/presenations/views/home_view.dart';
import '../../Features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static const klogin = '/loginView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: klogin,
        builder: (context, state) => const LoginViewScreen(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const FilmDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
