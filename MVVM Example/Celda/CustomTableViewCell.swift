//
//  CustomTableViewCell.swift
//  MVVM Example
//
//  Created by marco rodriguez on 16/06/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var imagenP: UIImageView!
    
    static let cellIdentifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    public func configure(with viewModel: CellViewModel) {
        myLabel.text = "\(viewModel.nombre) \(viewModel.apellido) tiene \(viewModel.edad) años"
        imagenP.image = viewModel.imagen
    }
    
}
