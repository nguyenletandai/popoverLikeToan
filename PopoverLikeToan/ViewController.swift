//
//  ViewController.swift
//  PopoverLikeToan
//
//  Created by daicudu on 12/16/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var popoverButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popoverButton.backgroundColor = .clear
        popoverButton.layer.cornerRadius = 5
        popoverButton.layer.borderWidth = 0.5
        popoverButton.layer.borderColor = UIColor.red.cgColor
        let cn: String = Singleton.shared.stringg ?? "Popover"
        popoverButton.setTitle(cn, for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
        let pc = vc.popoverPresentationController
        pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
        pc?.delegate = self
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }


}

