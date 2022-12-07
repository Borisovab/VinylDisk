//
//  Protocol View.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation

protocol ViewProtocol {
    func update(model: ViewModel)
}

struct ViewModel {
    var initialSpeed: Float?
    var shangedSpeed: Float?
    var startButtonIsHidden: Bool?
    var stopButtonIsHidden: Bool?
}
