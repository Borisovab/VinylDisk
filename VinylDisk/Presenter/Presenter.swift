//
//  Presenter.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

class Presenter: PresenterProtocol {

    var outputView: ViewProtocol?

    func presentInitialState(state: HomeModels.ResponsePresenter.InitialState) {
        let viewModel = HomeModels.ViewModel(startButtonIsPressed: state.startButtonIsHidden,
                                             stopButtonIsPressed: state.stopButtonIsHidden,
                                             newSpeedValue: nil)
        outputView?.displayView(viewModel)
    }

    func presentStartButton(isHidden: Bool) {
        let viewModel = HomeModels.ViewModel(startButtonIsPressed: isHidden,
                                             stopButtonIsPressed: nil,
                                             newSpeedValue: nil)
        outputView?.displayView(viewModel)
    }

    func presentStopButton(isHidden: Bool) {
        let viewModel = HomeModels.ViewModel(startButtonIsPressed: nil,
                                             stopButtonIsPressed: isHidden,
                                             newSpeedValue: nil)
        outputView?.displayView(viewModel)
    }

    func presentUpdateSpeed(speed: Float) {
        let viewModel = HomeModels.ViewModel(startButtonIsPressed: nil,
                                             stopButtonIsPressed: nil,
                                             newSpeedValue: speed)
        outputView?.displayView(viewModel)
    }
}
