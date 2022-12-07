//
//  Protocol Interactor.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation

protocol InteractorProtocol {
    func initialSpeed()
    func pressStartButton()
    func pressStopButton()
    func setSliderValue(speed: Float)
}
