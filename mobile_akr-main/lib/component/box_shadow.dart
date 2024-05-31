import 'package:flutter/material.dart';

var boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.4),
  spreadRadius: 3,
  blurRadius: 5,
  offset: const Offset(0, 1), // changes position of shadow
);

var boxShadowSm = BoxShadow(
  color: Colors.grey.withOpacity(0.4),
  spreadRadius: 1,
  blurRadius: 1,
  offset: const Offset(0, 1), // changes position of shadow
);