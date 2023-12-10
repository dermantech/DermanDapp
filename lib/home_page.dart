/*
* KODUMUN
* HATASI
* */




import 'package:dermanapps/pages/new_entry/new_entry_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
           const TopContainer(),
            SizedBox(
              height: 2.h,
            ),
            const Flexible(child: BottomContainer()),
          ],
        ),
      ),


      floatingActionButton: InkResponse(
        onTap: (){
        Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => const NewEntryPage()),
        );
        },
        child: SizedBox(
          width: 19.w,
          height: 8.h,

        child: Card(
          color: Colors.deepPurpleAccent,
          shape: CircleBorder(),
          child: Icon(
            Icons.add_outlined,
            color: Colors.white,
            size: 50.sp,
          ),
        ),
        ),
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            bottom: 1.h,
          ),
          child: Text(
            'Derman o, \nHer derdine',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(bottom: 1.h),
          child: Text(
            'Dermana hoşgeldin',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      /*  Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(bottom: 1.h),
          child: Text(
            '0',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ) */
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hiç ilacın yok',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
