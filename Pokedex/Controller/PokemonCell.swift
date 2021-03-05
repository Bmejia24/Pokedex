//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Byron on 01/03/21.
//

import UIKit

class PokemonCell: UITableViewCell {

    //MARK: - Outlet
    @IBOutlet weak var pokemonImg: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonNumber: UILabel!

    override func awakeFromNib() {
       super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

