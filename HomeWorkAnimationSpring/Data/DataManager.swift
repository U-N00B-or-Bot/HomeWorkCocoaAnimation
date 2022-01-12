//
//  model.swift
//  HomeWorkAnimationSpring
//
//  Created by Bulat Serimbetov on 12.01.2022.
//

import Foundation

class AnimationCurveDataList {
    static var shared = AnimationCurveDataList()
    private init(){}
    
    let animationList = ["slideLeft","slideRight","slideDown",
                        "slideUp","squeezeLeft","squeezeRight",
                        "squeezeDown","squeezeUp","fadeIn",
                        "fadeOut","fadeOutIn","fadeInLeft",
                        "fadeInRight","fadeInDown","fadeInUp",
                        "zoomIn","zoomOut","all","shake",
                        "pop","flipX","flipY","morph","squeeze",
                        "flash","wobble","swing"]
    
    
    let curveList = ["easeIn","easeOut","easeInOut",
                    "linear","spring","easeInSine",
                    "easeOutSine","easeInOutSine",
                    "easeInQuad","easeOutQuad",
                    "easeInOutQuad","easeInCubic",
                    "easeOutCubic","easeInOutCubic",
                    "easeInQuart","easeOutQuart",
                    "easeInOutQuart","easeInQuint",
                    "easeOutQuint","easeInOutQuint",
                    "easeInExpo","easeOutExpo",
                    "easeInOutExpo","easeInCirc",
                    "easeOutCirc","easeInOutCirc",
                    "easeInBack","easeOutBack",
                    "easeInOutBack"]
}


