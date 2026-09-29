import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: (FFCrossAxisAlignment.end).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE915BE),
                ),
              ),
              Container(
                width: 40.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFDF7FC),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    if (scaffoldKey.currentState!.isDrawerOpen ||
                        scaffoldKey.currentState!.isEndDrawerOpen) {
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Pagina 01',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: (FFCrossAxisAlignment.end).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                onPressed: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
