import 'package:flutter/material.dart';

import '../constant.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black45)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
             height: 125,
              width: 125,
              child: Stack(
                overflow: Overflow.visible,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                 Positioned(
                   bottom: 0,
                   right: -12,
                   child: SizedBox(
                     width: 48,
                     height: 48,
                     child: FlatButton(
                       padding: EdgeInsets.zero,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50),
                         side: BorderSide(color: Colors.white)
                       ),
//                   color: Colors.grey.shade100,
                         onPressed: (){},
                         child: Icon(Icons.camera_alt,color: Colors.grey,)),
                   ),
                 )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Body(title: 'My Account',icon:Icons.person,icon2:Icons.arrow_forward_ios ,),
            Body(title: 'Notification',icon:Icons.notifications,icon2:Icons.arrow_forward_ios ,),
            Body(title: 'Setting',icon:Icons.settings,icon2:Icons.arrow_forward_ios ,),
            Body(title: 'Help Center',icon:Icons.help_center,icon2:Icons.arrow_forward_ios ,),
            Body(title: 'Log Out',icon:Icons.logout,icon2:Icons.arrow_forward_ios ,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15.0),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.broken_image_rounded,color: KTextColor,),
            Icon(Icons.favorite_border,color: KTextColor,),
            Icon(Icons.chat,color: KTextColor,),
            Icon(Icons.person,color: KPrimaryColor,)
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final IconData icon;
  final IconData icon2;
  final String title;

  const Body({Key key, this.icon,this.icon2, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          child: FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: (){},
              color: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.white)
              ),
              child: Row(
                children: [
                Icon(icon,color: KTextColor,size: 30,),
                  SizedBox(width: 20),
                  Text(title,style: TextStyle(color: KTextColor,fontSize: 25),),
                  Spacer(),
                  Icon(icon2)

                ],
              )),
    );
  }
}

//Icons.arrow_forward_ios