import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
          clipBehavior: Clip.none, fit: StackFit.expand,
          children: [ CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Image.png'),
          ),
            Positioned(
                right: -12,
                bottom: 0,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                            color: Colors.white
                        )
                    ),
                    color: Color(0xFFF5F6F9),
                    onPressed: (){

                    }, child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
                  ),
                ))
          ]
      ),
    );
  }
}