import 'package:flutter/material.dart';
class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.text, required this.imageUrl, required this.onTap, }) : super(key: key);
  final String  text;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),),
            elevation: 5,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(8),
                    child: Center(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                        NetworkImage(imageUrl),
                      )
                    ),
                  ),
                  Center(child: Text(text, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),))

                ]
            )
        ),
      ),
    );



  }
}
