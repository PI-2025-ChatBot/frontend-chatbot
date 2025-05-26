import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

bool validarEmail(String? email) {
  if (email == null) return false;
  email = email.trim().toLowerCase();
  return email.endsWith('@p4ed.com') && email.split('@')[0].isNotEmpty;
}

String extrairBodyText(String rawXml) {
  final RegExp regex = RegExp(r'<Body>(.*?)<\/Body>', dotAll: true);
  final match = regex.firstMatch(rawXml);
  return match != null ? match.group(1)!.trim() : '';
}

String formataHora(String timestamp) {
  try {
    // Converte a string para DateTime
    DateTime date = DateTime.parse(timestamp).toLocal();

    // Formata para dd/MM - HH:mm
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String hour = date.hour.toString().padLeft(2, '0');
    String minute = date.minute.toString().padLeft(2, '0');

    return '$day/$month - $hour:$minute';
  } catch (e) {
    return 'Data inválida';
  }
}
