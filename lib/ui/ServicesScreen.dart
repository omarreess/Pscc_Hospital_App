


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newmed/main.dart';

List listdrawer = ['Administrative Services','Clinical Services','Departments ','Media Center','External Sites','PSCC'];
List clinicalSubCatogArr= [
  'ISCV','Ph-Order','Nursing DB','Laboratory Specimen Manual','Sick Leave','Admintal' , 'G-floor','RABET','OPAMS' , 'Patient Report' ,
  'MRI' , 'DORTAL','Third Floor System','Sick Leave Old' , 'Lexicomp' , '5th-floor','Workforce',  'Electronic Report' , 'Clinical-Ph' , 'Rota', 'PARP' ,
  'Pharmaceutical', 'Surgery DB', 'RT' , 'PACS','Mobile Contacts' , 'ERROR-FORM', 'Nuclear', 'PH-Query', 'PH-Female' , 'Patient Services'
];

class ServicesScreen extends StatefulWidget {
  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {

  List curentArr = List<dynamic>.empty(growable: true);
  @override
  void initState() {
     super.initState();
     curentArr=listdrawer;
  }
  @override
  void didChangeDependencies() {

     super.didChangeDependencies();


  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: clrGreenLight,
     appBar:  AppBar(title: Text('BSCC',style: TextStyle(fontSize: 18),),centerTitle: true,backgroundColor: Colors.transparent,elevation: 0,),
      body:
      Stack(
        children: [
        Container(
           height:MediaQuery.of(context).size.height*0.4 ,
          padding: EdgeInsets.only(left: 0,right:0,top: 0),
          child: Column(
            children: [
              CircleAvatar(backgroundColor: Colors.white,radius: 78,child: Image(image: AssetImage('assets/logotrans.png')  )),
               Divider(height: 5 , color: Colors.transparent,),
              Container( child: Center(child: Text('Hospital Services',style: TextStyle(height:1.6,fontSize: 38,fontWeight: FontWeight.w500,color: Colors.white),))),

              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
              // SvgPicture.asset(
              //
              //     'assets/hospital.svg',height: 45,width: 45,
              //  )
               ],),
            ],
          ),
        ),
        Align(

            alignment:Alignment.bottomCenter,child: Container(
          child:
            Scrollbar(
              thickness: 4, 
              controller: ScrollController(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                  itemCount: curentArr.length,
                  scrollDirection: Axis.vertical,
                  //A delegate that controls the layout of the children within the
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(


                      crossAxisCount: 2,  // no. col

                      crossAxisSpacing: 10.0,
                      mainAxisSpacing:10.0
                  ),

                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      onTap: (){
                        setState((){
                          curentArr=clinicalSubCatogArr;
                        });
                      },
                      child: Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ) ,
                       // color: clrList[index],
                        color: clrWhiteDrk ,
                        elevation: 2,
                        child: GridTile(child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(curentArr[index] , style: TextStyle(fontSize: 16 ,height: 1.5, color: Colors.black54,fontWeight: FontWeight.bold),),
                        ),),),
                    );
                  },
                ),
              ),
            ),

            height:MediaQuery.of(context).size.height*0.57,
            width: double.infinity,
            padding: EdgeInsets.only(right: 20, left: 20 , top:10 , bottom: 9),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(topLeft:Radius.circular(68.5)),color: Colors.white,)
            ,),

        )
      ]
        ,),

    );
  }
}
