//
//  ViewModelPerson.swift
//  MVVM Example
//
//  Created by marco rodriguez on 16/06/22.
//

import Foundation
import UIKit

// MARK: - ViewModel -> necesito solo 2 propiedades del modelo
struct CellViewModel {
    let nombre: String
    let apellido: String
    let edad: Int
    let imagen: UIImage
}
