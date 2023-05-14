import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;

  const CommonAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.white,
      shadowColor: Colors.orange,
      title: Text(
        appBarTitle,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.deepPurpleAccent,
        ),
      ),
      elevation: 5.0,
      leading: SizedBox(
        height: 20,
        width: 20,
        child: Hero(
          tag: 'AppBackBtnHW',
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(onPressed: Get.back,icon: const Icon(Icons.arrow_circle_left_sharp, color: Colors.red,),),
          ),
        ),
      ),
      actions: [
        SizedBox(
          height: 40,
          width: 40,
          child: Hero(
            tag: 'AppLogoHW',
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset('images/applogo.png'),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
