


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newmed/localization/generated/l10n.dart';
 import 'package:newmed/model/NewsModel.dart';
import 'package:provider/provider.dart';

 import '../main.dart';
import 'HospitalBanner.dart';

 List quickArr = [
   'Medical Privilees','Lexicomp','Dortal' ,'Nurtal',
  'PPGs','ATMT', 'Memo','HR','ISCV','E-Request',
];
List<NewsModel> newsArr = [
NewsModel(
imgUrl:'https://cdn.sabq.org/uploads/media-cache/resize_800_relative/uploads/material-file/5f0c48fa968e9595ef8b456b/5f0c48f68c0c1.jpg',

head :'نجح مركـز الأمير سلطان لمعالجة أمراض وجراحة القلب للقوات المسلحة بإجراء (394) عملية',
 body: 'أوضح ذلك  الدكتور  / عبدالعزيز  بن علي الخالدي إستشاري أول جراحة قلب الأطفال و رئيس قسم جراحة قلب الأطفال بمركز الأمير سلطان لمعالجة أمراض و جراحة القلب للقوات المسلحة  مشيراً  أن برنامج جراحة االشرايين الرئوية  بدأ في المركز عام 2017م ويستقبل حالات من مختلف مراكز القلب في المملكة ودول الخليج ودول الشرق الأوسط و آسيا وأوروبا ويساهم بعلاجهم  حيث قام المركز بعلاج حالات لم يتم قبولها في مراكز متقدمة  في أمريكا و أوروبا وأجريت لهم عمليات و حالتهم مستقرة ولله الحمد .'
),
  NewsModel(
imgUrl:'http://gate.ahram.org.eg/Media/News/2021/1/2/19_2021-637451974362766155-276.jpg',

head :'زراعة قلب أصيبا بفايروس كورونا المستجد ( كوفيد 19)',
body:'نجح مركز الأمير سلطان لمعالجة أمراض وجراحة القلب للقوات المسلحة في معالجة مريضين زراعة قلب أصيبا  بفايروس كورونا المستجد ( كوفيد 19 ) . وكانت إمرأة خمسينية سبق أن أجري لها عملية زراعة قلب ناجحة قبل ستة أشهر قد تعرضت لإلتهاب رئـوي وهبوط في التنفس حـادين نتيجـة إصابتها بفايـروس كـورونا المستجـد ( كوفيد19 )  . كما قام المركز بإدخال مريض شاب يبلغ من العمر 14 عاماً سبق له أن أجرى عملية زراعة قلب ناجحة قبل عام إلى العناية المركزة بعد أن أصيب بورم لمفاوي وإلتهاب فايروس كورونا المستجد ( كوفيد 19 ) . وبفضل من الله عز وجل ثم بجهود الطاقم الطبي القائم على حالتهما فقد تم شفاؤهما من فايروس كورونا المستجد ( كوفيد 19 ) وغادرا المركز وهما بصحة وعافية ويمارسان حياتهما بشكل طبيعي​'
),

];


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(title: Text('BSCC',style: TextStyle(fontSize: 18,color: Colors.black54),),
         centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
         leading:
         Container(
              //margin: EdgeInsets.only(left: 18,top: 12),
             child: Center(child: FlatButton(
                 onPressed: (){
               setState(() {
                 Provider.of<LanguageCurrent>(context, listen: false).changeLang();

                 // (languageApp=='ar')?languageApp='en':languageApp='ar';
                 //print('ystaa $languageApp');
               });
             },child: Text((Provider.of<LanguageCurrent>(context, listen: false).languageApp=='ar')?'EN':'AR' ,style: TextStyle(color: clrGreen ,  fontSize: 16.0),)))),
         actions: [Container(margin:EdgeInsets.only(right: 5),
             child: IconButton(iconSize:43 ,color: Colors.black45, icon: Icon(Icons.account_circle_outlined) ,onPressed: () { Navigator.pushNamed(context, 'choose'); },))],
       // leading:Icon(Icons.account_circle,size:38 ,color: Colors.black45,) ,
        ),

      backgroundColor: Colors.white,

      body : SafeArea(
        child: SingleChildScrollView(
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hospitalBanner(),
                Container(
                  margin: const EdgeInsets.only(left:15  ,right: 15, top : 0.0 ),
                  child: Text (

                    S.of(context)!.quickAccess,

                    textAlign: TextAlign.start,

                    style: TextStyle(fontSize:30 ,height: 1.9, color: clrBlueLight,fontWeight: FontWeight.w600  ),),
                ),
                Container(width: double.infinity,
                  height: 150,


                  margin: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                  //color: Colors.black38,
                  child: GridView.builder(
                    itemCount: quickArr.length,
                    scrollDirection: Axis.horizontal,
                    //A delegate that controls the layout of the children within the
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(


                        crossAxisCount: 1,  // no. col

                         mainAxisSpacing:10.0
                    ),

                    itemBuilder: (BuildContext context, int index){
                      return Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ) ,
                        // color: clrList[index],
                        color:  (index==0)?Color(int.parse('#0041C4'.replaceAll('#', '0xff'))).withOpacity(0.9):(index==1)?Color(int.parse('#0041C4'.replaceAll('#', '0xff'))).withOpacity(0.4):(index==2)?clrBlueLight.withOpacity(1):(index==3)?clrBlueLight.withOpacity(0.7):(index==4)?clrBlueLight.withOpacity(0.5):clrBlueLight.withOpacity(0.2),
                        elevation:0.5,
                        child: GridTile(
                          child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(quickArr[index] , style: TextStyle(fontSize: 18 ,height: 1.5, color: Colors.white,fontWeight: FontWeight.w400),),
                        ),),);
                    },
                  ),),
                Container(
                  margin: const EdgeInsets.only(left:15 ,right: 15, top : 0.5 ),
                  child: Text (S.of(context)!.latestNews, style: TextStyle(fontSize:30 ,height: 1.9, color: clrGreenLight,fontWeight: FontWeight.w600  ),),
                ),
                Container(width: double.infinity,height: 400,child:
                Scrollbar(controller:ScrollController() ,thickness: 4.5,
                  isAlwaysShown: true,
                  child: ListView.separated(
                   // scrollDirection:Axis.vertical ,
                    separatorBuilder: (context, index) => Divider(
                        height: 3,
                        color:Colors.transparent
                    ),
                    itemCount: newsArr.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(5),
                      child:
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 190,

                            margin: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                            //color: Colors.black38,
                            child: Card(
                                elevation: 1,
                                color: clrBack,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius:BorderRadius.circular(10) ,
                                  child: Image.network(newsArr[index].imgUrl! ,height: 190,
                                    width: double.infinity ,fit: BoxFit.cover,
                                  ),
                                )
                            ),),

                          Container(
                            margin: const EdgeInsets.only(left:20 , top : 4,right:20 ),
                            child: Text (newsArr[index].head!,textDirection:TextDirection.rtl, style: TextStyle(fontSize:20 ,height: 1.35, color: clrRed.withOpacity(0.8),fontWeight: FontWeight.bold  ),),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left:22 , top : 10,bottom: 10,right: 22 ),
                            child: Text ( newsArr[index].body!,textDirection:TextDirection.rtl,  maxLines: 3,style: TextStyle(fontSize:14.6 ,height: 1.5, color: Colors.black54,fontWeight: FontWeight.w100  ),),
                          ),                      ],
                      ),
                    ),
                  ),
                )
                  ,),

              ],

            ),

        ),
      ));
  }
}
