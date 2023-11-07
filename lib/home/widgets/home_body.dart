// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';
import 'package:la_comer/home/bloc/bloc.dart';
import 'package:la_comer/utils/extensions.dart';
import 'package:la_comer_ui/la_comer_ui.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                UISpacing.lg,
                              ),
                            ),
                            border: Border.all(
                              color: UIColors.greenComer,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Cambiar sucuarsal',
                                style: UITextStyle.labelSmall.copyWith(
                                  color: UIColors.greenComer,
                                  fontWeight: UIFontWeight.semiBold,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 20,
                                color: UIColors.greenComer,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.pin_drop_outlined,
                              color: UIColors.greenComer,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sucursal Norte',
                              style:
                                  UITextStyle.headline2.copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image(
                      image: Assets.images.home.iconoMenu.provider(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Buscar produntos...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: UIColors.orangeComerLight,
                          prefixIcon: Icon(
                            Icons.search,
                            color: UIColors.orangeComer,
                            size: 30,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: UIColors.orangeComerLight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: UIColors.orangeComer,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Assets.images.home.filtro.svg(width: 50),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                UICardBanner(
                  text: 'Hasta 35% off en frutas y verduras seleccionadas',
                  image:
                      'https://www.seekpng.com/png/detail/545-5458099_tropical-fruit.png',
                  width: context.deviceSize.width * 0.25,
                ),
                SizedBox(
                  height: 400,
                  child: DefaultTabController(
                    length: 4, // Cantidad de pestañas
                    child: Scaffold(
                      body: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: UISpacing.sm),
                            child: TabBar(
                              isScrollable: true,
                              labelColor: UIColors.greenComer,
                              indicatorColor: UIColors.greenComer,
                              tabs: const [
                                Tab(text: 'Todo'),
                                Tab(text: 'Frutas y verdutas'),
                                Tab(text: 'Carnes'),
                                Tab(text: 'Abarrotes'),
                              ],
                            ),
                          ),
                          Divider(),
                          Flexible(
                            child: TabBarView(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        UICardHome(
                                          width: context.deviceSize.width * 0.4,
                                          title: 'Limon sin semilla',
                                          image:
                                              'https://img.freepik.com/foto-gratis/lima-aislado_93675-131268.jpg',
                                        ),
                                        UICardHome(
                                          width: context.deviceSize.width * 0.4,
                                          title: 'Platano',
                                          image:
                                              'https://cdn.pixabay.com/photo/2016/02/23/17/29/banana-1218133_1280.png',
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        UICardHome(
                                          width: context.deviceSize.width * 0.4,
                                          title: 'Granada roja',
                                          image:
                                              'https://www.gastrolabweb.com/u/fotografias/m/2021/8/17/f1280x720-17687_149362_5050.jpg',
                                        ),
                                        UICardHome(
                                          width: context.deviceSize.width * 0.4,
                                          title: 'Naranja',
                                          image:
                                              'https://img.freepik.com/fotos-premium/naranja-natural-valecia-fruta-corte-mitad-hojas-verdes-aisladas-sobre-fondo-blanco_252965-17.jpg',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(' 2 '),
                                Text(' 3 '),
                                Text(' 4 '),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
