//
//  Singleton.swift
//  VinylDisk
//
//  Created by Александр Борисов on 04.12.2022.
//

import Foundation

class Singleton {
    private init() {}

    static let shared = Singleton()
    let startNameButton = "Start"
    let stopNameButton = "Stop"
}
