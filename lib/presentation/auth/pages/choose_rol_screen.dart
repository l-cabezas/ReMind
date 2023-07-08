import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remind/presentation/auth/widgets/choose_rol_form_component.dart';

import '../../../domain/services/localization_service.dart';
import '../../screens/popup_page.dart';
import '../../styles/app_images.dart';
import '../../styles/sizes.dart';
import '../../utils/dialogs.dart';
import '../widgets/customCheckbox_component.dart';

class ChooseRolScreen extends StatelessWidget {
  const ChooseRolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpPage(
        body: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: Sizes.hMarginExtreme(context),
                      bottom: Sizes.vMarginSmallest(context),
                      left: Sizes.vMarginSmall(context),
                    ),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Theme.of(context).iconTheme.color,
                        )
                    ),),
                  SizedBox(width: Sizes.fullScreenWidth(context)/1.6,),
                  Container(
                    padding: EdgeInsets.only(
                      top: Sizes.hMarginExtreme(context),
                      bottom: Sizes.vMarginSmallest(context),
                      left: Sizes.vMarginSmall(context),
                    ),
                    alignment: Alignment.topRight,
                    child: IconButton(
                        alignment: Alignment.center,
                        onPressed: (){
                          AppDialogs.showInfo(context,message: tr(context).info_registro);
                        },
                        icon: Icon(Icons.info_outline,
                          color: Theme.of(context).iconTheme.color,
                        )
                    ),),
                ],),
                //const AppLogoComponent(),
                Container(
                  constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                  //fondo
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.loginBackground,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    //vertical: Sizes.screenVPaddingHigh(context),
                    horizontal: Sizes.screenHPaddingDefault(context),
                  ),
                  //const WelcomeComponent(),
                  child: Column(
                      children: [
                        SizedBox(
                          height: Sizes.vMarginHigh(context),
                        ),

                         const ChooseRolFormComponent(),

                        SizedBox(
                          height: Sizes.vMarginHigh(context),
                        ),]
                  ),
                ),
              ]),
        )
    );
  }
}
