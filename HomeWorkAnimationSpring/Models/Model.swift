//
//  Model.swift
//  HomeWorkAnimationSpring
//
//  Created by Bulat Serimbetov on 12.01.2022.
//

import Spring


class Security {
    static var shared = Security()
    private init(){}
    
    var theButtonWasPressed = false
}


struct AnimationModel {
    let nextElement: String
    let curveCurrElement: String
    let forceValue: Double
    let durationValue: Double
    let delayValue: Double
    
    static func getAnimationModel() -> AnimationModel{
    AnimationModel(nextElement: AnimationCurveDataList.shared.animationList.randomElement()!, curveCurrElement: AnimationCurveDataList.shared.curveList.randomElement()!, forceValue: Double.random(in: 0.1..<2), durationValue: Double.random(in: 0.5..<3), delayValue: Double.random(in: 0.2..<1))
    }
}


struct FirstPressed {
    let firstPressed: String
    static func getFirstPressedRandomValueForSpringAnimationView()->FirstPressed {
        FirstPressed(firstPressed: AnimationCurveDataList.shared.animationList.randomElement()!)
    }
}
