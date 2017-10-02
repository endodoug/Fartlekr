//
//  FartlekController.swift
//  Fartlekr
//
//  Created by doug harper on 9/2/17.
//  Copyright © 2017 Doug Harper. All rights reserved.
//

import WatchKit
import Foundation

class FartlekController: WKInterfaceController {
  
  @IBOutlet var workoutLabel: WKInterfaceLabel!
  @IBOutlet var runTimer: WKInterfaceTimer!
  @IBOutlet var stopRunButton: WKInterfaceButton!
  
  var intervalTimer = Timer()
  var isRunning: Bool = true
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
//    var timeInterval = randomTimer()
//    runTimer.setDate(Date(timeIntervalSinceNow: timeInterval))
//    if intervalTimer.isValid { intervalTimer.invalidate() }
//    intervalTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(timerDidEnd(_:)), userInfo: nil, repeats: true)
    workoutLabel.setText("Run!!")
    stopRunButton.setTitle("Stop")
    timerReset()
  }
  
  @objc func timerDidEnd(_ timer: Timer) {
    print("Timer ended")
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  @IBAction func stopButtonTapped() {
    isRunning = !isRunning
    runTimer.stop()
    if isRunning {
      stopRunButton.setTitle("Stop")
      workoutLabel.setText("Run!!")
    } else {
      stopRunButton.setTitle("Run!")
      workoutLabel.setText("Stopped")
    }
  }
  
  func timerReset() {
    let interval: TimeInterval = randomTimer()
    runTimer.stop()
    let time = Date(timeIntervalSinceNow: interval)
    runTimer.setDate(time)
    runTimer.start()
  }
  
  
  
}
