//
//  HomeModels.swift
//  VinylDisk
//
//  Created by Александр Борисов on 09.12.2022.
//

import Foundation

enum HomeModels {

    struct RequestInteractor {
    }

    struct ResponsePresenter {

        var initialState: InitialState

        struct InitialState {
            var startButtonIsHidden: Bool
            var stopButtonIsHidden: Bool
        }
    }

    struct ViewModel {
        var startButtonIsPressed: Bool?
        var stopButtonIsPressed: Bool?
        var newSpeedValue: Float?
    }
}
