import 'package:flutter/material.dart';

/*
* تم عمل هذا الكلاس لجعله ويدجت خاصة بنا تحمل
* التصميم في الجوانب من الشاشة بدل
*  إعادة تصميم الجماليات الجانبية في كل واجهة بل نستدعي الويدجت
* هذه واررسال ابن لها يحمل تصميم الواجهة الحالية
*  كما عملنا في واجهة الlogin and register قمنا
*  فقط باستدعاء ال BackGround() ثم اكمال التصميم
*
*
*
* */
class BackGround extends StatelessWidget {
//لكي عند انشاء كائن من هذه الويدجت نقوم فقط بإرسال التصميم الخاص بالواجهة ونحتفظ بالجماليات الجانبية وعدم اعادتها
  final Widget child;

  const BackGround({
//نرسله للاب ويمكننا ايضا الاستغناء عنه
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //سيقدم لنا العرض والارتافع االخاص بالمساحة التي نصمم بها
    Size size = MediaQuery.of(context).size;
    //this container holds the main design of backGround for all interFaces
    return Container(
      //اخذنا كامل عرض وارتفاع الشاشة لنضع ال stack في داخله
      width: double.infinity,
      height: size.height,
      child: Stack(
        //to put all the stack in the middle of the interface and we specify
        //the position of every element on the layout by using the Positioned widget
        //but the child we will send to this BackGround widget will go in the middle
        alignment: Alignment.center,
        children: [
          //this widget will holds the topRight1 image on the ropRightCorner
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Image.asset(
              'images/topright.png',
              width: size.width,
            ),
          ),
          //this widget will holds the topRight2 image and will go on the topRight1 in the same position
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Image.asset(
              'images/topright2.png',
              width: size.width,
            ),
          ),
          //this widget will holds the person image and it will be set on the topRight1 and topRight2
          Positioned(
            top: 50,
            right: 30,
            child: Image.asset(
              'images/person.png',
              width: size.width * 0.35,
            ),
          ),
          //this widget will holds the middleBottom image and it will be set on the right bottom
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
              'images/middlebotton.png',
              width: size.width,
            ),
          ),
          //this widget will holds the middleBottom image and it will be set on the left bottom
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
              'images/bottomleft.png',
              width: size.width,
            ),
          ),
          //when  we call this BackGround widget and send our child like
          // in the login inter face we've sent a column then it will be set
          //on the middle of the stack because of the alignment.center of the
          //stack
          child
        ],
      ),
    );
  }
}
