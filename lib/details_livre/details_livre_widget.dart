import 'package:url_launcher/url_launcher.dart';

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
import 'details_livre_model.dart';
export 'details_livre_model.dart';

class DetailsLivreWidget extends StatefulWidget {
  const DetailsLivreWidget({
    Key? key,
    required this.livre,
  }) : super(key: key);

  final LivresAuteurRecord? livre;

  @override
  _DetailsLivreWidgetState createState() => _DetailsLivreWidgetState();
}

class _DetailsLivreWidgetState extends State<DetailsLivreWidget>
    with TickerProviderStateMixin {
  late DetailsLivreModel _model;

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
    'textOnPageLoadAnimation4': AnimationInfo(
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
    'textOnPageLoadAnimation5': AnimationInfo(
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
    'textOnPageLoadAnimation6': AnimationInfo(
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
    'textOnPageLoadAnimation7': AnimationInfo(
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
    _model = createModel(context, () => DetailsLivreModel());

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
                'ywrgehbx' /* Description */,
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
                    fit: BoxFit.cover,
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
                child: Text(
                  widget.livre!.format,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final descriptions =
                        widget.livre?.descriptions?.toList() ?? [];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(descriptions.length,
                          (descriptionsIndex) {
                        final descriptionsItem =
                            descriptions[descriptionsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 5.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: MesToolsCall.call(
                              text: descriptionsItem,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final exemples = widget.livre?.exemples?.toList() ?? [];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(exemples.length, (exemplesIndex) {
                        final exemplesItem = exemples[exemplesIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              color: Color(0xFF7C1677),
                              size: 24.0,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: MesToolsCall.call(
                                    text: exemplesItem,
                                    from: 'fr',
                                    to: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
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
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      }).divide(SizedBox(height: 5.0)),
                    );
                  },
                ),
              ),
              Builder(
                builder: (context) {
                  final avis = widget.livre?.avis?.toList() ?? [];
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(avis.length, (avisIndex) {
                      final avisItem = avis[avisIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 5.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: MesToolsCall.call(
                                          text: avisItem.commentaire,
                                          from: 'fr',
                                          to: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xFF120D40),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textMesToolsResponse =
                                              snapshot.data!;
                                          return Text(
                                            MesToolsCall.translated(
                                              textMesToolsResponse.jsonBody,
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation4']!);
                                        },
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 5.0),
                                          child: Text(
                                            avisItem.lecteur,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation5']!),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final piedDePage = widget.livre?.piedDePage?.toList() ?? [];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(piedDePage.length, (piedDePageIndex) {
                        final piedDePageItem = piedDePage[piedDePageIndex];
                        return FutureBuilder<ApiCallResponse>(
                          future: MesToolsCall.call(
                            text: piedDePageItem,
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
                                animationsMap['textOnPageLoadAnimation6']!);
                          },
                        );
                      }),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: MesToolsCall.call(
                    text: 'Disponible sur :',
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
                      valueOrDefault<String>(
                        MesToolsCall.translated(
                          textMesToolsResponse.jsonBody,
                        ).toString(),
                        'Disponible sur :',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            fontWeight: FontWeight.bold,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation7']!);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        const url =
                            'https://santecorpsetesprit.com'; // URL to be launched
                        if (await canLaunch(url)) {
                          await launch(url); // Launches the URL
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      text:
                          'Visitez notre site', // Directly setting the button text
                      options: FFButtonOptions(
                        width: double.infinity, // Full width button
                        height: 40.0, // Button height
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 0.0), // Padding inside the button
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0,
                            0.0, 0.0), // Padding for the icon (if any)
                        color:
                            Color(0xFF232F3E), // Background color of the button
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro', // Font family
                                  color: Colors.white, // Text color
                                ),
                        elevation: 3.0, // Shadow elevation
                        borderSide: BorderSide(
                          color: Color(0xFF29154A), // Border color
                          width: 1.0, // Border width
                        ),
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                    ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[1]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '8n0lcd0a' /*  www.chapitre.com  */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFF253F64),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[2]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '242wzucc' /*  www.leslibrairies.fr */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFF006D9B),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Color(0xFF29154A),
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[3]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '3wjg4wm3' /*  www.placedeslibraires.fr */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFF268E6C),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[4]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '5c4t8fci' /* www.librairiesdelest.fr */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFFD81A36),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Color(0xFF29154A),
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[5]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '8290920t' /* www.parislibrairies.fr  */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFFC4C4C4),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                    //   FFButtonWidget(
                    //     onPressed: () async {
                    //       await launchURL(widget.livre!.liens[6]);
                    //     },
                    //     text: FFLocalizations.of(context).getText(
                    //       '4160fa3p' /* www. librairiesindependantes.c... */,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: double.infinity,
                    //       height: 40.0,
                    //       padding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       iconPadding:
                    //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    //       color: Color(0xFF21BBEF),
                    //       textStyle:
                    //           FlutterFlowTheme.of(context).titleSmall.override(
                    //                 fontFamily: 'Readex Pro',
                    //                 color: Colors.white,
                    //               ),
                    //       elevation: 3.0,
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width: 1.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //     ),
                    //   ),
                  ].divide(SizedBox(height: 5.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
