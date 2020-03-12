
"use strict";

let NoiseLevels = require('./NoiseLevels.js');
let Irs = require('./Irs.js');
let BatteryLevel = require('./BatteryLevel.js');
let motor_state = require('./motor_state.js');
let Mouth = require('./Mouth.js');
let LCD = require('./LCD.js');
let EyesPositions = require('./EyesPositions.js');
let Expression = require('./Expression.js');
let Nose = require('./Nose.js');
let Mic = require('./Mic.js');
let HeadPose = require('./HeadPose.js');

module.exports = {
  NoiseLevels: NoiseLevels,
  Irs: Irs,
  BatteryLevel: BatteryLevel,
  motor_state: motor_state,
  Mouth: Mouth,
  LCD: LCD,
  EyesPositions: EyesPositions,
  Expression: Expression,
  Nose: Nose,
  Mic: Mic,
  HeadPose: HeadPose,
};
