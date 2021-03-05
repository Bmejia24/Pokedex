//
//  ViewController.swift
//  Pokedex
//
//  Created by Byron on 26/02/21.
//

import UIKit
import Kingfisher

class ViewController: UIViewController{

    //MARK: - ;Variables
    
    var inSearchMode : Bool = false
    private let reusableCell: String = "pokemonCell"
    var items: [Displayable] = []
    var selectedItem: Displayable?
    var filteredPokemons: [Displayable]!
    
    //MARK: - Outlet
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pokemonTableView: UITableView!
    @IBOutlet weak var downView: UIView!
    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        self.searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
       
       
        //table view
        setUpData()

        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let gradientDown = UIColor.setGradient()
        gradientDown.frame = downView.bounds
        self.downView.layer.addSublayer(gradientDown)
        
        let gradientTop = UIColor.setGradient()
        gradientTop.frame = topView.bounds
        self.topView.layer.addSublayer(gradientTop)
              
        super.viewWillAppear(animated)
    }
    
    
}

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if (searchText == ""){
            selectedItem = items as? Displayable
        }
        else{
            selectedItem = [] as? Displayable
            selectedItem = items.filter{
                $0.nameLabelText.capitalized.contains(searchText.capitalized)
            } as? Displayable
        }
        self.tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell) as! PokemonCell
        let item = self.items[indexPath.row]
        let id = Int(item.urlPokemon.deletingPrefix("https://pokeapi.co/api/v2/pokemon/").dropLast())
        let cap = item.nameLabelText
        cell.pokemonName?.text = cap.capitalized
        let idFormated = String(format: "%03d", id!)
        cell.pokemonNumber?.text = "#\(idFormated)"
        let imageURL = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(String(id!)).png")
        cell.pokemonImg.kf.setImage(with: imageURL)
        
        
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedItem = items[indexPath.row]
        return indexPath

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? PokemonViewController else {
          return
        }
        destinationVC.data = selectedItem
    }
    
    
    
    
    
}

extension ViewController{
    //MARK: Networking
    
    func setUpData(){
        pokemonAPI.shared.getPokemons(url: "https://pokeapi.co/api/v2/", range: "pokemon?limit=50") { (pokemon: [Pokemon]) in
            self.items = pokemon
            
            self.tableView.reloadData()
        } failure: { (error: Error?) in
            print(error.debugDescription)
        }
       
    }
    
    
}

