//
//  Extensions+EdgeInset.swift
//  Firebase-Realm
//
//  Created by Mac on 22/05/2023.
//

import UIKit

extension UIEdgeInsets {
    
    init(allEdges: CGFloat) {
        self.init(top: allEdges, left: allEdges, bottom: allEdges, right: allEdges)
    }
    
    static func topOnly(_ topInset: CGFloat) -> Self {
        .init(top: topInset, left: 0, bottom: 0, right: 0)
    }
    
    static func bottomOnly(_ bottomInset: CGFloat) -> Self {
        .init(top: 0, left: 0, bottom: bottomInset, right: 0)
    }
    
    static func leftOnly(_ leftInsect: CGFloat) -> Self {
        .init(top: 0, left: leftInsect, bottom: 0, right: 0)
    }
    
    static func rightOnly(_ rightInsect: CGFloat) -> Self {
        .init(top: 0, left: 0, bottom: 0, right: rightInsect)
    }
    
    static func topLeftOnly(_ topInsect: CGFloat, _ leftInsect: CGFloat) -> Self {
        .init(top: topInsect, left: leftInsect, bottom: 0, right: 0)
    }
    
    static func topRightOnly(_ topInsect: CGFloat, _ rightInsect: CGFloat) -> Self {
        .init(top: topInsect, left: 0, bottom: 0, right: rightInsect)
    }
    
    static func bottomRightOnly(_ bottomInsect: CGFloat, _ rightInsect: CGFloat) -> Self {
        .init(top: 0, left: 0, bottom: bottomInsect, right: rightInsect)
    }
    
    static func bottomLeftOnly(_ bottomInsect: CGFloat, _ leftInsect: CGFloat) -> Self {
        .init(top: 0, left: leftInsect, bottom: bottomInsect, right: 0)
    }
    
    static func topBottomOnly(_ topInsect: CGFloat, _ bottomInsect: CGFloat) -> Self {
        .init(top: topInsect, left: 0, bottom: bottomInsect, right: 0)
    }
    
    static func sides(_ leftInect: CGFloat, _ rightInsect: CGFloat) -> Self {
        .init(top: 0, left: leftInect, bottom: 0, right: rightInsect)
    }
}

