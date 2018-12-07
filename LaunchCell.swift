//
//  LaunchCell.swift
//  Liftoff
//
//  Created by Pavol Margitfalvi on 13/08/2017.
//  Copyright © 2017 Pavol Margitfalvi. All rights reserved.
//

import UIKit

@IBDesignable
class LaunchCell: UITableViewCell {
    
    @IBOutlet weak var rocketName: UILabel!
    //@IBOutlet weak var missionName: UILabel!
    @IBOutlet weak var date: UILabel!
    
    @IBInspectable var lineWidth: CGFloat = 4
    @IBInspectable var radiusRatio: CGFloat = 0.2
    @IBInspectable var boundsOffset: CGFloat = 5
    
    @IBInspectable var fillColor = UIColor(red: 0.17, green: 0.25, blue: 0.38, alpha: 1.0)
    @IBInspectable var strokeColor = UIColor(red: 0.98, green: 0.62, blue: 0.26, alpha: 1.0)
    
    override func draw(_ rect: CGRect) {
        
        let radius = CGFloat(radiusRatio) * min(rect.width, rect.height)
        let newRect = CGRect(x: rect.minX + boundsOffset, y: rect.minY + boundsOffset, width: rect.width - 2 * boundsOffset, height: rect.height - 2 * boundsOffset)
        let path = UIBezierPath.init(roundedRect: newRect, cornerRadius: radius)
        
        path.lineWidth = lineWidth
 
        strokeColor.setStroke()
        path.stroke()
        
        fillColor.setFill()
        path.fill()
        
    }
    
}
