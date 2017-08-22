//
//  InterfaceController.swift
//  Fartlekr WatchKit Extension
//
//  Created by doug harper on 8/21/17.
//  Copyright © 2017 Doug Harper. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  @IBOutlet var titleLabel: WKInterfaceLabel!
  @IBOutlet var textLabel: WKInterfaceLabel!

  @IBAction func startButtonTapped() {
    print("Start tapped")
    textLabel.setText("🏃💨")
  }

}
