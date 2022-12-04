//
//  Coordinator.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

class Coordinator {

    static let shared = Coordinator()

    private init() {}

    var interacter: Interacter?
    var presenter: Presenter?
    var view: ViewController?

}
