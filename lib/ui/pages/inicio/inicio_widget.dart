import 'package:get/get.dart';
import 'package:proyecto_mintic/controlador/state_controller.dart';
import 'package:proyecto_mintic/ui/widgets/card_state.dart';
import 'package:proyecto_mintic/domain/models/state_model.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String tituloEjemplo = 'tituloEjemplo';
    String pathImagenEjemplo = 'assets/images/P_chat_inactiovo.png';
    String estadoEjemplo = 'estadoEjemplo';
    StateController statecontroller = Get.find();
    statecontroller.addState(StateModel(titulo: tituloEjemplo, pathImagen: pathImagenEjemplo, estado: estadoEjemplo));
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-91.82, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                child: Image.asset(
                  'assets/images/Botton_Nav_Blanco.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 665),
                child: Image.asset(
                  'assets/images/cabezal.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.8, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Image.asset(
                  'assets/images/Logo_2.png',
                  width: 150,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75, -0.97),
              child: Image.asset(
                'assets/images/BTN_BUSCAR.png',
                width: 50,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 60),
                child: Container(
                  width: 340,
                  height: 560,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Stack(
                      children: [Container(child: GetX<StateController>(builder:(statecontroller){return ListView.builder(itemCount: statecontroller.listStates.length,itemBuilder: (context,index){return CardState(titulo: statecontroller.listState[index].titulo, pathImagen: statecontroller.listState[index].pathImagen, estado: statecontroller.listState[index].estado);},);}))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.92),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 5),
                child: Image.asset(
                  'assets/images/BTN_ms.png',
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
