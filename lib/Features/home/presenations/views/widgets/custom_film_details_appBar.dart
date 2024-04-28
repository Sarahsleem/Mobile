import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFilmDetailsAppBar extends StatelessWidget {
  const CustomFilmDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
<<<<<<< HEAD
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
=======
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        /* IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ) */
      ],
    );
  }
}
