import 'package:flutter/material.dart';

import '../widgets/contant_info_app.dart';

class InfoApp extends StatelessWidget {
  const InfoApp({Key? key}) : super(key: key);
  static const routeName = '/info_app';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("عن التطبيق"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            SizedBox(
              width: 150,
              height: 150,
              child: FittedBox(
                fit: BoxFit.none,
                child: Image.asset(
                  "assets/images/logoicon.png",
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const ContantInfoApp(
              title: "(وَذَكِّرْ فَإِنَّ الذِّكْرَىٰ تَنفَعُ الْمُؤْمِنِينَ)",
              info:
                  """من منطلق الذكر الكريم فقد حرص مطوري تطبيق " فذكر " علي تقديم محتوي الكتروني اسلامي  هادف لاعانة المسلمين في شتي بقاع الارض علي الذكر .
وقد ورد عن رسولنا الكريم حديث شريف ينص علي ان (خيركم من تعلم القرآن وعلمه). حديث صحيح رواه البخاري ,
وقد جاء في الحديث المتفق عليه من حديث أبي هريرة رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: إن لله تعالى ملائكة يطوفون في الطرق يلتمسون أهل الذكر، فإذا وجدوا قوماً يذكرون الله عز وجل تنادوا: هلموا إلى حاجتكم، فيحفونهم بأجنحتهم إلى السماء الدنيا، فيسألهم ربهم وهو أعلم: ما يقول عبادي؟ قال: يقولون: يسبحونك، ويكبرونك، ويحمدونك، ويمجدونك، فيقول: هل رأوني، فيقولون: لا والله ما رأوك، فيقول: كيف لو رأوني؟ قال: يقولون: لو رأوك كانوا أشد لك عبادة وأشد لك تمجيداً وأكثر لك تسبيحاً، فيقول: فماذا يسألون؟ قال: يقولون: يسألونك الجنة، قال: يقول: وهل رأوها؟ قال: يقولون: لا والله يا رب ما رأوها، قال: يقول: فكيف لو رأوها؟ قال: يقولون: لو أنهم رأوها كانوا أشد عليها حرصاً وأشد لها طلباً وأعظم فيها رغبة، قال: فمم يتعوذون؟ قال: يتعوذون من النار؟ قال: فيقول: وهل رأوها؟ قال: يقولون: لا والله ما رأوها، فيقول: فكيف لو رأوها؟ قال: يقولون: لو رأوها كانوا أشد منها فراراً وأشد لها مخافة، قال: فيقول: فأشهدكم أني قد غفرت لهم، قال: يقول ملك من الملائكة: فيهم فلان ليس منهم إنما جاء لحاجة، قال: هم الجلساء لا يشقى بهم جليسهم.
ومن منطلق هذا الحيث فقد قام مطوري التطبيق باضافة جميع ضوابط المسلم اليومية 
      """,
            ),
            const ContantInfoApp(title: "اقسام التطبيق ", info: """
- كتاب حصن المسلم :يحتوي علي جميع الاذكار 
- السبحة الالكترونية
- القرآ الكريم كامل 
- الاذان 
- صلاتي : يحتوي علي جميع انواع الصلاوات وضوابطها 
- مناسك الحج والعمرة 
      
      """),
            const ContantInfoApp(
                title: "الاذونات",
                info:
                    "- تحديد الموقع الحالي : يقوم التطبيق بالحصول علي اذونات تحديد الموقع  الحالي بغرض الحصول علي ادق مواعيد للاذان")
          ]),
        ),
      ),
    );
  }
}