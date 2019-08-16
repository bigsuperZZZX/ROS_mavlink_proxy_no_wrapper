
"use strict";

let GlobalPositionINT = require('./GlobalPositionINT.js');
let SetPositionTargetLocalNED = require('./SetPositionTargetLocalNED.js');
let polling_or_sendstream = require('./polling_or_sendstream.js');
let HighresIMU = require('./HighresIMU.js');
let Heartbeat = require('./Heartbeat.js');
let SetPositionTargetGlobalINT = require('./SetPositionTargetGlobalINT.js');
let CommandLong = require('./CommandLong.js');
let Attitude = require('./Attitude.js');
let Altitude = require('./Altitude.js');
let LocalPositionNED = require('./LocalPositionNED.js');

module.exports = {
  GlobalPositionINT: GlobalPositionINT,
  SetPositionTargetLocalNED: SetPositionTargetLocalNED,
  polling_or_sendstream: polling_or_sendstream,
  HighresIMU: HighresIMU,
  Heartbeat: Heartbeat,
  SetPositionTargetGlobalINT: SetPositionTargetGlobalINT,
  CommandLong: CommandLong,
  Attitude: Attitude,
  Altitude: Altitude,
  LocalPositionNED: LocalPositionNED,
};
