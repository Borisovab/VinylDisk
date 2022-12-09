//
//  Protocol Presenter.swift
//  VinylDisk
//
//  Created by Александр Борисов on 27.11.2022.
//

import Foundation

protocol PresenterProtocol {
    func presentInitialState(state: HomeModels.ResponsePresenter.InitialState)
    func presentStartButton(isHidden: Bool)
    func presentStopButton(isHidden: Bool)
    func presentUpdateSpeed(speed: Float)
}
