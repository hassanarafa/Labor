import 'package:flutter/cupertino.dart';

class BoardBuildingItem extends StatelessWidget {
  const BoardBuildingItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305.44,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/images/Vector 231.png"),
              Image.asset(image),
            ],
          ),
        ],
      ),
    );
  }
}
