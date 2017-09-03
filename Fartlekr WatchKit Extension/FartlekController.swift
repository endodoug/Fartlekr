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
  @IBOutlet var timer: WKInterfaceTimer!
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    
    timer.setDate(Date(timeIntervalSinceNow: randomTimer()))
    timer.start()
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
    timer.stop()
  }
  
}
