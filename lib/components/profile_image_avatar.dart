import 'package:flutter/material.dart';

class DashboardProfileImage extends StatelessWidget {
  const DashboardProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CircleAvatar(
      radius: size.width / 4,
      backgroundColor: Colors.blue.withOpacity(0.3),
      child: const DummyPicture(),
    );
  }
}

class DummyPicture extends StatelessWidget {
  const DummyPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Image(
      // image: const AssetImage("images/yellow bulb.png"),
      image: const AssetImage("images/Iremide.png"),
      width: size.width / 5.2,
      height: size.width / 5,
    );
  }
}
