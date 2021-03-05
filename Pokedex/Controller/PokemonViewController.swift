//
//  PokemonViewController.swift
//  Pokedex
//
//  Created by Byron on 01/03/21.
//

import UIKit

class PokemonViewController: UIViewController {

    
    //MARK: Variables
    var data:Displayable?
    var mainColor:UIColor = UIColor.rgb(red: 101, green: 175, blue: 229)

    // MARK: - Stored properties
    public var url = ""
    private var isCaughtTapped = false
    private let pokemonDetailsURL = "https://pokeapi.co/api/v2/pokemon-species/"
    
    
    //MARK: - Outlet
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var viewController: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonTypeLabel: UILabel!
    @IBOutlet weak var statsBtn: UIButton!
    @IBOutlet weak var evolutionsBtn: UIButton!
    @IBOutlet weak var movesBtn: UIButton!
    @IBOutlet weak var pokemonDescription: UILabel!
    
    
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var atkLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var satkLabel: UILabel!
    @IBOutlet weak var sdefLabel: UILabel!
    @IBOutlet weak var spdLabel: UILabel!
    
    
    @IBOutlet weak var hpValuesLabel: UILabel!
    @IBOutlet weak var atkValuesLabel: UILabel!
    @IBOutlet weak var defValuesLabel: UILabel!
    @IBOutlet weak var satkValuesLabel: UILabel!
    @IBOutlet weak var sdefValuesLabel: UILabel!
    @IBOutlet weak var spdValuesLabel: UILabel!
    
    @IBOutlet weak var hpProgressBar: UIProgressView!
    @IBOutlet weak var atkProgressBar: UIProgressView!
    @IBOutlet weak var defProgressBar: UIProgressView!
    @IBOutlet weak var satkProgressBar: UIProgressView!
    @IBOutlet weak var sdefProgressBar: UIProgressView!
    @IBOutlet weak var spdProgressBar: UIProgressView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpUIControls()
        setUpDataPokemon()
        
    }

}

extension PokemonViewController{
    
    func setUpUIControls(){
        viewController.layer.cornerRadius = 70
        viewController.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]

        pokemonTypeLabel.layer.cornerRadius = 10
        pokemonTypeLabel.layer.masksToBounds = true
   
        statsBtn.layer.cornerRadius = 20
        evolutionsBtn.layer.cornerRadius = 20
        movesBtn.layer.cornerRadius = 20
        
    }
    
}

    

extension PokemonViewController{
    
    func setUpDataPokemon(){
        
        self.pokemonName.text = data?.nameLabelText.capitalized

            pokemonAPI.shared.getPokemonData(url: self.data!.urlPokemon) { (pokemonData: PokemonBase) in
            if let types = pokemonData.types{
                
                self.pokemonTypeLabel.text = types[0].type?.name?.capitalized
                
                switch types[0].type?.name {
                case "water":
                
                    let gradient = UIColor.waterGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "grass":
                    self.mainColor = UIColor.grass()
                    
                    let gradient = UIColor.grassGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "normal":
                    self.mainColor = UIColor.normal()
                    
                    let gradient = UIColor.normalGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "fighting":
                    self.mainColor = UIColor.fight()
                    
                    let gradient = UIColor.fightGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "poison":
                    self.mainColor = UIColor.poison()
                    
                    let gradient = UIColor.poisonGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "ground":
                    self.mainColor = UIColor.ground()
                    
                    let gradient = UIColor.groundGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "rock":
                    self.mainColor = UIColor.rock()
                    
                    let gradient = UIColor.rockGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                    
                case "bug":
                    self.mainColor = UIColor.bug()
                    
                    let gradientTop = UIColor.bugGradient()
                    gradientTop.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradientTop)
                    
                case "ghost":
                    self.mainColor = UIColor.ghost()
                    
                    let gradient = UIColor.ghostGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "steel":
                    self.mainColor = UIColor.steel()
                    
                    let gradient = UIColor.steelGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "fire":
                    self.mainColor = UIColor.fire()
                    
                    let gradient = UIColor.fireGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "electric":
                    self.mainColor = UIColor.electric()
                    
                    let gradient = UIColor.electricGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "psychic":
                    self.mainColor = UIColor.psychic()
                    
                    let gradient = UIColor.psychicGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "ice":
                    self.mainColor = UIColor.ice()
                    
                    let gradient = UIColor.iceGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "dragon":
                    self.mainColor = UIColor.dragon()
                    
                    let gradient = UIColor.dragonGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                    
                case "dark":
                    self.mainColor = UIColor.dark()
                    
                    let gradient = UIColor.darkGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                case "fairy":
                    self.mainColor = UIColor.fairy()
                    
                    let gradient = UIColor.fairyGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                    
                    
                default:
                    self.mainColor = UIColor.normal()
                    
                    let gradient = UIColor.normalGradient()
                    gradient.frame = self.mainView.bounds
                    self.mainView.layer.addSublayer(gradient)
                }
                
                
                self.movesBtn.backgroundColor = .white
                self.movesBtn.setTitleColor(self.mainColor, for: .normal)
                self.statsBtn.backgroundColor = self.mainColor
                self.statsBtn.setTitleColor(.white, for: .normal)
                self.pokemonTypeLabel.backgroundColor = self.mainColor
                self.evolutionsBtn.backgroundColor = .white
                self.evolutionsBtn.setTitleColor(self.mainColor, for: .normal)
                self.view.backgroundColor = self.mainColor
                
                self.hpProgressBar.progressTintColor = self.mainColor
                self.atkProgressBar.progressTintColor = self.mainColor
                self.defProgressBar.progressTintColor = self.mainColor
                self.satkProgressBar.progressTintColor = self.mainColor
                self.sdefProgressBar.progressTintColor = self.mainColor
                self.spdProgressBar.progressTintColor = self.mainColor
                
            
                self.hpLabel.textColor = self.mainColor
                self.atkLabel.textColor = self.mainColor
                self.defLabel.textColor = self.mainColor
                self.satkLabel.textColor = self.mainColor
                self.sdefLabel.textColor = self.mainColor
                self.spdLabel.textColor = self.mainColor
            }
            
            if let img = pokemonData.sprites?.other?.officialArtwork?.frontDefault{
                self.imageView.kf.setImage(with: URL(string: img))
                
            }
            
            if let stats = pokemonData.stats{
                
                self.hpValuesLabel.text = String(format: "%3d", (stats[0].baseStat!))
                self.atkValuesLabel.text = String(format: "%3d", (stats[1].baseStat!))
                self.defValuesLabel.text = String(format: "%3d", (stats[2].baseStat!))
                self.satkValuesLabel.text = String(format: "%3d", (stats[3].baseStat!))
                self.sdefValuesLabel.text = String(format: "%3d", (stats[4].baseStat!))
                self.spdValuesLabel.text = String(format: "%3d", (stats[5].baseStat!))
                
                //120 is the highest stat value
                self.hpProgressBar.progress = (Float(stats[0].baseStat!)/120)
                self.atkProgressBar.progress = (Float(stats[1].baseStat!)/120)
                self.defProgressBar.progress = (Float(stats[2].baseStat!)/120)
                self.satkProgressBar.progress = (Float(stats[3].baseStat!)/120)
                self.sdefProgressBar.progress = (Float(stats[4].baseStat!)/120)
                self.spdProgressBar.progress = (Float(stats[5].baseStat!)/120)
                
               
            }
            
            if let id = pokemonData.id{
                pokemonAPI.shared.getPokemonSpecies(url: "https://pokeapi.co/api/v2/pokemon-species/\(id)/") { (species: Species) in
                    self.pokemonDescription.text = species.flavorTextEntries![7].flavorText?.capitalized
                    
                } failure: { (error: Error?) in
                    print(error.debugDescription)
                    
                }
                
            }
            
        } failure: { (error: Error?) in
            print(error.debugDescription)
        }
    }
    
}




