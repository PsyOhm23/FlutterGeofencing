// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Internal.
GLocation locationFromList(List<double> l) => GLocation._fromList(l);

/// A simple representation of a geographic location.
class GLocation {
  final double latitude;
  final double longitude;

  const GLocation(this.latitude, this.longitude);

  GLocation._fromList(List<double> l)
      : assert(l.length == 2),
        latitude = l[0],
        longitude = l[1];

  @override
  String toString() => '($latitude, $longitude)';
}
