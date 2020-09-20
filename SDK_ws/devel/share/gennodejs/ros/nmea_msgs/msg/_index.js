
"use strict";

let GpgsvSatellite = require('./GpgsvSatellite.js');
let Sentence = require('./Sentence.js');
let Gprmc = require('./Gprmc.js');
let Gpgga = require('./Gpgga.js');
let Gpgsa = require('./Gpgsa.js');
let Gpgsv = require('./Gpgsv.js');

module.exports = {
  GpgsvSatellite: GpgsvSatellite,
  Sentence: Sentence,
  Gprmc: Gprmc,
  Gpgga: Gpgga,
  Gpgsa: Gpgsa,
  Gpgsv: Gpgsv,
};
