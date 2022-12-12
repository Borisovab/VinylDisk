//
//  Interacter.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation
import SnapKit

class Interactor: InteractorProtocol {

    var presenter: PresenterProtocol?

    func onLoadView() {
        presenter?.presentInitialState(state: HomeModels.ResponsePresenter.InitialState.init(
            startButtonIsHidden: false,
            stopButtonIsHidden: true))
    }

    func pressStartButton() {
        presenter?.presentInitialState(state: HomeModels.ResponsePresenter.InitialState.init(
            startButtonIsHidden: true,
            stopButtonIsHidden: false))
    }

    func pressStopButton() {
        presenter?.presentInitialState(state: HomeModels.ResponsePresenter.InitialState.init(
            startButtonIsHidden: false,
            stopButtonIsHidden: true))
    }

    func setSliderValue(speed: Float) {
        presenter?.presentUpdateSpeed(speed: speed)
    }


}
