//
//  Extension+ViewController.swift
//  Opportunities
//
//  Created by youssef on 12/6/20.
//  Copyright © 2020 youssef. All rights reserved.
//

import UIKit
import WebKit

extension UIViewController {

//    func presentAlertOnMainThread( message: String,buttontitle: String, buttonTitle2: String, isoneBtn : Bool) {
//        DispatchQueue.main.async {
//            let alertVC = CustomAlertVC(Massage: message, titleBtn1: buttontitle, titleBtn2: buttonTitle2,isoneButton: isoneBtn)
//            alertVC.modalPresentationStyle  = .overFullScreen
//            alertVC.modalTransitionStyle    = .crossDissolve
//            self.present(alertVC, animated: true)
//        }
//    }
    
    func cellAnimation(cell : UITableViewCell){
        let retaionAngelInRadian = 180 * CGFloat(Double.pi / 90)
        let rotationTransform = CATransform3DMakeRotation(retaionAngelInRadian, 0, 0, 1)
        cell.layer.transform = rotationTransform
        
        UIView.animate(withDuration: 1.2) {
            cell.layer.transform = CATransform3DTranslate(CATransform3DIdentity, 500, 100, 0)
        }
    }
    
    
    func getYoutubeId(youtubeUrl: String) -> String? {
        return URLComponents(string: youtubeUrl)?.queryItems?.first(where: { $0.name == "v" })?.value
    }

}


