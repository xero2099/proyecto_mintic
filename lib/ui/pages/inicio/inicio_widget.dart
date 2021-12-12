import 'package:get/get.dart';
import 'package:proyecto_mintic/controlador/image_controller.dart';
import 'package:proyecto_mintic/controlador/state_controller.dart';
import 'package:proyecto_mintic/ui/pages/busqueda/busqueda_widget.dart';
import 'package:proyecto_mintic/ui/pages/chatprivado/chatprivado_widget.dart';
import 'package:proyecto_mintic/ui/pages/configuracion/configuracion_widget.dart';
import 'package:proyecto_mintic/ui/pages/perfil/perfil_widget.dart';
import 'package:proyecto_mintic/ui/widgets/card_state.dart';
import 'package:proyecto_mintic/domain/models/state_model.dart';
import 'package:flutter/material.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String tituloEjemplo = 'HOLA';
    Widget pathImagenEjemplo = IconButton(
      icon: Image.asset('assets/images/P_chat_inactiovo.png'),
      iconSize: 40,
      onPressed: () {
        Get.to(() => PerfilWidget());
      },
    );
    String estadoEjemplo = 'estadoEjemplo';
    StateController statecontroller = Get.find();
    statecontroller.addState(StateModel(
        titulo: tituloEjemplo,
        pathImagen: pathImagenEjemplo,
        estado: estadoEjemplo));
    Image_Control image = Get.find();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Obx(
                () => Image.asset(
                  image.imagen,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
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
              alignment: AlignmentDirectional(-0.8, -1.015),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                child: Image.asset(
                  'assets/images/Logo_2.png',
                  width: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //BOTON BUSQUEDA NUEVO
            Align(
              alignment: AlignmentDirectional(0.75, -1.015),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: IconButton(
                  icon: Image.asset('assets/images/BTN_BUSCAR.png'),
                  iconSize: 50,
                  onPressed: () {
                    Get.to(() => BusquedaWidget());
                  },
                ),
              ),
            ),
            //CONTENEDOR DE LAS CARTAS
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
                            GetX<StateController>(builder: (statecontroller) {
                          return ListView.builder(
                            itemCount: statecontroller.listStates.length,
                            itemBuilder: (context, index) {
                              return CardState(
                                  titulo:
                                      statecontroller.listState[index].titulo,
                                  pathImagen: statecontroller
                                      .listState[index].pathImagen,
                                  estado:
                                      statecontroller.listState[index].estado);
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
