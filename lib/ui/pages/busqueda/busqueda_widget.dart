import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:proyecto_mintic/controlador/image_controller.dart';
import 'package:proyecto_mintic/controlador/state_controller2.dart';
import 'package:proyecto_mintic/domain/models/state_model2.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_mintic/ui/pages/chatprivado/chatprivado_widget.dart';
import 'package:proyecto_mintic/ui/pages/inicio/inicio_widget.dart';
import 'package:proyecto_mintic/ui/pages/perfil/perfil_widget.dart';
import 'package:proyecto_mintic/ui/widgets/card_state2.dart';

class BusquedaWidget extends StatefulWidget {
  const BusquedaWidget({Key key}) : super(key: key);

  @override
  _BusquedaWidgetState createState() => _BusquedaWidgetState();
}

class _BusquedaWidgetState extends State<BusquedaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Image_Control image = Get.find();
    String tituloEjemplo2 = 'tituloEjemplo';
    String pathImagenEjemplo2 = 'assets/images/P_offline.png';
    String estadoEjemplo2 = 'estadoEjemplo';
    StateController2 statecontroller2 = Get.find();
    statecontroller2.addState(StateModel2(
        titulo2: tituloEjemplo2,
        pathImagen2: pathImagenEjemplo2,
        estado2: estadoEjemplo2));
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => Image.asset(
                image.imagen,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 720),
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
                padding: EdgeInsetsDirectional.fromSTEB(125, 45, 0, 0),
                child: Image.asset(
                  'assets/images/Logo_2.png',
                  width: 150,
                  height: 60,
                  fit: BoxFit.contain,
                ),
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
                      children: [
                        Container(child:
                            GetX<StateController2>(builder: (statecontroller2) {
                          return ListView.builder(
                            itemCount: statecontroller2.listStates2.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => PerfilWidget());
                                },
                                child: CardState2(
                                    titulo2: statecontroller2
                                        .listState2[index].titulo2,
                                    pathImagen2: statecontroller2
                                        .listState2[index].pathImagen2,
                                    estado2: statecontroller2
                                        .listState2[index].estado2),
                              );
                            },
                          );
                        }))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //BOTON NAVEGACION ABAJO
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 720, 0, 3),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/BTN_ms.png',
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 80, 0, 4),
                          child: IconButton(
                            icon: Image.asset('assets/images/Home_off.png'),
                            onPressed: () {
                              Get.to(() => InicioWidget());
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 80, 0, 0),
                          child: IconButton(
                            icon: Image.asset('assets/images/chat_off.png'),
                            onPressed: () {
                              Get.to(() => ChatprivadoWidget());
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(105, 80, 0, 0),
                          child: Image.asset(
                            'assets/images/game_off.png',
                            width: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 80, 0, 0),
                            child: IconButton(
                              icon: Image.asset('assets/images/perfik_on.png'),
                              onPressed: () {
                                Get.to(() => PerfilWidget());
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
