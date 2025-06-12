import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for mensagem_TextField widget.
  FocusNode? mensagemTextFieldFocusNode;
  TextEditingController? mensagemTextFieldTextController;
  String? Function(BuildContext, String?)?
      mensagemTextFieldTextControllerValidator;
  Completer<List<MensagensRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (bot api)] action in enviar_IconButton widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    listViewController?.dispose();
    mensagemTextFieldFocusNode?.dispose();
    mensagemTextFieldTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
