// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.7

import 'dart:io';

class Mock {
  noSuchMethod(Invocation invocation) => null;
}

class MockHttpHeaders extends Mock implements HttpHeaders {}

main() {}
