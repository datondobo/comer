import 'package:flutter/material.dart';
import 'package:la_comer/home/bloc/bloc.dart';
import 'package:la_comer/home/widgets/home_body.dart';
import 'package:la_comer_ui/la_comer_ui.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  /// The static route for HomePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        body: HomeView(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, -3), // Ajusta la elevación vertical
              ),
            ],
          ),
          child: BottomNavigationBar(
            selectedItemColor: UIColors.orangeComer,
            unselectedItemColor: UIColors.orangeComerLight,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Assets.images.home.home.svg(width: 25),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Assets.images.home.ofertas.svg(width: 25),
                label: 'Buscar',
              ),
              BottomNavigationBarItem(
                icon: Assets.images.home.carrito.svg(width: 25),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Assets.images.home.corazonSvg.svg(width: 25),
                label: 'Carrito',
              ),
              BottomNavigationBarItem(
                icon: Assets.images.home.usuario.svg(height: 25),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// {@template home_view}
/// Displays the Body of HomeView
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
