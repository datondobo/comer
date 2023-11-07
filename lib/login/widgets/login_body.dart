// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:la_comer/home/home.dart';
import 'package:la_comer/login/bloc/bloc.dart';
import 'package:la_comer/utils/extensions.dart';
import 'package:la_comer_ui/la_comer_ui.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    void goHome() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
            child: Center(
              child: Column(
                children: [
                  Assets.images.login.isotipoLogin.svg(
                    width: context.deviceSize.width < 600
                        ? context.deviceSize.width * 0.65
                        : context.deviceSize.width * 0.25,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Assets.images.login.logotipo.svg(
                    width: context.deviceSize.width < 600
                        ? context.deviceSize.width * 0.65
                        : context.deviceSize.width * 0.25,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: UIColors.orangeComerLight,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: UIColors.orangeComer,
                        size: 30,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: UIColors.orangeComerLight,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: UIColors.orangeComer,
                        size: 30,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: goHome,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(UIColors.orangeComer),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'Iniciar Sesión',
                        style: UITextStyle.headline4,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '¿No tienes cuenta? Regístrate',
                    style: UITextStyle.subtitle1
                        .copyWith(color: UIColors.orangeComer),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'O inicia sesión con',
                          style: UITextStyle.subtitle1
                              .copyWith(color: UIColors.orangeComer),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Assets.images.login.facebook.svg(width: 60),
                      SizedBox(
                        width: 30,
                      ),
                      Assets.images.login.ios.svg(width: 60),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
