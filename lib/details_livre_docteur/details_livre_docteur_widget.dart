import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_livre_docteur_model.dart';
export 'details_livre_docteur_model.dart';

class DetailsLivreDocteurWidget extends StatefulWidget {
  const DetailsLivreDocteurWidget({
    Key? key,
    required this.livre,
  }) : super(key: key);

  final LivresDocteurRecord? livre;

  @override
  _DetailsLivreDocteurWidgetState createState() =>
      _DetailsLivreDocteurWidgetState();
}

class _DetailsLivreDocteurWidgetState extends State<DetailsLivreDocteurWidget>
    with TickerProviderStateMixin {
  late DetailsLivreDocteurModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, -250.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-10.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 50.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: Offset(-20.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsLivreDocteurModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF29154A),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              FFLocalizations.of(context).getText(
                'hkkds1nv' /* Description */,
              ),
              style: FlutterFlowTheme.of(context).titleSmall,
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 230.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.network(
                      widget.livre!.image,
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0x17202529),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: MesToolsCall.call(
                    text: widget.livre?.titre,
                    from: 'fr',
                    to: FFLocalizations.of(context).languageCode,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFF120D40),
                            ),
                          ),
                        ),
                      );
                    }
                    final textMesToolsResponse = snapshot.data!;
                    return Text(
                      MesToolsCall.translated(
                        textMesToolsResponse.jsonBody,
                      ).toString(),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: MesToolsCall.call(
                    text: widget.livre?.sousTitre,
                    from: 'fr',
                    to: FFLocalizations.of(context).languageCode,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFF120D40),
                            ),
                          ),
                        ),
                      );
                    }
                    final textMesToolsResponse = snapshot.data!;
                    return Text(
                      MesToolsCall.translated(
                        textMesToolsResponse.jsonBody,
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final details = widget.livre?.descriptions?.toList() ?? [];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(details.length, (detailsIndex) {
                        final detailsItem = details[detailsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 5.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: MesToolsCall.call(
                              text: detailsItem,
                              from: 'fr',
                              to: FFLocalizations.of(context).languageCode,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFF120D40),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final textMesToolsResponse = snapshot.data!;
                              return Text(
                                MesToolsCall.translated(
                                  textMesToolsResponse.jsonBody,
                                ).toString(),
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!);
                            },
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              //   Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              //     child: Builder(
              //       builder: (context) {
              //         final liens = widget.livre?.liens?.toList() ?? [];
              //         return Column(
              //           mainAxisSize: MainAxisSize.max,
              //           children: List.generate(liens.length, (liensIndex) {
              //             final liensItem = liens[liensIndex];
              //             return FFButtonWidget(
              //               onPressed: () async {
              //                 await launchURL('https://www.santeglobale.world/');
              //               },
              //               text: FFLocalizations.of(context).getText(
              //                 '2la1c2rx' /* Disponible sur : www.santeglob... */,
              //               ),
              //               options: FFButtonOptions(
              //                 width: double.infinity,
              //                 height: 40.0,
              //                 padding: EdgeInsetsDirectional.fromSTEB(
              //                     0.0, 0.0, 0.0, 0.0),
              //                 iconPadding: EdgeInsetsDirectional.fromSTEB(
              //                     0.0, 0.0, 0.0, 0.0),
              //                 color: FlutterFlowTheme.of(context).warning,
              //                 textStyle: FlutterFlowTheme.of(context)
              //                     .titleSmall
              //                     .override(
              //                       fontFamily: 'Readex Pro',
              //                       color: FlutterFlowTheme.of(context).primary,
              //                     ),
              //                 elevation: 3.0,
              //                 borderSide: BorderSide(
              //                   color: Colors.white,
              //                   width: 1.0,
              //                 ),
              //                 borderRadius: BorderRadius.circular(8.0),
              //               ),
              //             );
              //           }).divide(SizedBox(height: 5.0)),
              //         );
              //       },
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
