/*
* KODUMUN
* HATASI
* */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class NewEntryPage extends StatefulWidget {
  const NewEntryPage({Key? key}) : super(key: key);

  @override
  State<NewEntryPage> createState() => _NewEntryPageState();
}

class _NewEntryPageState extends State<NewEntryPage> {
  Color get color => Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Yeni İlaçlarınız'),
        ),
        body: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PanelTitle(
                title: 'İlacınızın adı',
                isRequired: true,
              ),
              TextFormField(
                maxLength: 12,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.grey),
              ),
              const PanelTitle(
                title: 'İlacınızın dozajı (varsa)',
                isRequired: false,
              ),
              TextFormField(
                maxLength: 12,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 2.h,
              ),
              const PanelTitle(title: 'İlacınızın tipi', isRequired: false),
              Row(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        width: 20.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.h),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 1.h,
                              bottom: 1.h,
                            ),
                            child:

                           SvgPicture.asset(
                              'assets/icons/tablet.svg',
                              height: 7.h,
                              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text('İlaç'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class PanelTitle extends StatelessWidget {
  const PanelTitle({Key? key, required this.title, required this.isRequired})
      : super(key: key);

  final String title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
