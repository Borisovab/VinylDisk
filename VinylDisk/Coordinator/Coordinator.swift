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

    func setController() -> UIViewController {
        var view: ViewController
        var interactor: Interactor
        var presenter: Presenter

        view = ViewController()
        interactor = Interactor()
        presenter = Presenter()

        view.interactor = interactor
        interactor.presenter = presenter
        presenter.outputView = view

        return view
    }
}
