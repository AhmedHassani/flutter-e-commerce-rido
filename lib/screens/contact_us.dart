import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(AppLocalizations.of(context).contact_us,style: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.phone,size: 32,),
              SizedBox(height: 25,),
              InkWell(
                  onTap: (){
                    launch("tel://+9647713152847");
                  },
                  child: Text('+964 771 315 2847',style: TextStyle(fontSize: 22),))
            ],
          ),
        ),
      ),
    );
  }
}
