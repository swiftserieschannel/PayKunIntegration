//
//  ViewController.swift
//  PayKunIntegration
//
//  Created by chander bhushan on 03/10/19.
//  Copyright © 2019 swiftseries. All rights reserved.
//

import UIKit
import PayKun
class ViewController: UIViewController {

    var objPaykun: PaykunCheckout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        objPaykun = PaykunCheckout.init(key: Constents.API_KEY, merchantId: Constents.MERCHANT_KEY, isLive: true, andDelegate: self)
    }

    
    @IBAction func clickedBtnPay(_ sender: Any) {
        let seconds = Int(NSDate().timeIntervalSince1970)
        objPaykun.checkout(withCustomerName: "Sam", customerEmail: "hrsame@gmail.in", customerMobile: "88998787890", productName: "MAC IN", orderNo: String(seconds), amount: "12", viewController: self)
    }
    
    
}

extension ViewController : PaykunCheckoutDelegate {
    func onPaymentFailed(_ responce: [AnyHashable : Any]) {
        debugPrint(responce)
    }
    
    func onPaymentSucceed(_ responce: [AnyHashable : Any]) {
        debugPrint(responce)
    }
    
    
}

