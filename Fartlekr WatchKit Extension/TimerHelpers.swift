//
//  TimerHelpers.swift
//  Fartlekr
//
//  Created by doug harper on 9/2/17.
//  Copyright © 2017 Doug Harper. All rights reserved.
//

import WatchKit

func randomTimer() -> Double {
  let oneMinuteTimer: UInt32 = arc4random_uniform(31) + 30
  return Double(oneMinuteTimer)
}
