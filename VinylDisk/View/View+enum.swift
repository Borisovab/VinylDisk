//
//  View+enum.swift
//  VinylDisk
//
//  Created by Александр Борисов on 04.12.2022.
//

import Foundation

extension ViewController {
    enum ScaleForSlider: Float {
        case minValue = 0
        case maxValue = 20
        case startValue = 5
    }

    enum ViewConstraints: Float {
        case Height = 250
        case CenterY = -200
    }

    enum ButtonConstraints: Float {
        case Width = 80
        case Height = 60
        case Top = 200
    }

    enum SpeedSwitchConstraints: Float {
        case Height = 30
        case Leading = 25
        case Top = 100
    }
}
