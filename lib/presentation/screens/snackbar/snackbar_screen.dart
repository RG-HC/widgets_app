import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        onPressed: () {},
        label: 'ok',
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Estas seguro'),
              content: const Text(
                  'Velit nostrud esse voluptate veniam cupidatat reprehenderit consectetur incididunt amet adipisicing. Ullamco anim aliqua ea magna deserunt commodo. Do pariatur aute Lorem qui irure pariatur ex occaecat culpa anim dolor cupidatat enim. Reprehenderit culpa duis occaecat eiusmod.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Est culpa laboris enim veniam et. Ex labore laborum culpa dolore aliqua id voluptate dolore. Eiusmod et magna duis esse. Culpa mollit esse eu sit duis duis velit sint ullamco nostrud nisi ullamco dolore culpa. Commodo amet ex proident incididunt sint cupidatat laborum ipsum laboris ex proident sit sint. Nulla duis nulla consectetur nostrud officia Lorem id officia Lorem Lorem officia. Magna qui minim laborum laboris ullamco deserunt excepteur veniam nostrud.')
                ]);
              },
              child: const Text('Licenias Usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
