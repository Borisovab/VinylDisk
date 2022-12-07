//
//  Presenter.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

class Presenter: PresenterProtocol {

    init() {}

    var outputView: ViewProtocol?

    func presentInitialSpeed(speed: Float) {
        let viewModel = ViewModel(initialSpeed: speed,
                                  shangedSpeed: nil,
                                  startButtonIsHidden: nil,
                                  stopButtonIsHidden: nil)
        outputView?.update(model: viewModel)
    }

    func presentStartButton(isHidden: Bool) {
        let viewModel = ViewModel(initialSpeed: nil,
                                  shangedSpeed: nil,
                                  startButtonIsHidden: isHidden,
                                  stopButtonIsHidden: nil)
        outputView?.update(model: viewModel)
    }

    func presentStopButton(isHidden: Bool) {
        let viewModel = ViewModel(initialSpeed: nil,
                                  shangedSpeed: nil,
                                  startButtonIsHidden: nil,
                                  stopButtonIsHidden: isHidden)
        outputView?.update(model: viewModel)
    }

    func presentUpdateSpeed(speed: Float) {
        let viewModel = ViewModel(initialSpeed: nil,
                                  shangedSpeed: speed,
                                  startButtonIsHidden: nil,
                                  stopButtonIsHidden: nil)
        outputView?.update(model: viewModel)
    }
}
