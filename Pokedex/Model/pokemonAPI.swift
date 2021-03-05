//
//  NetworkinProvider.swift
//  Pokedex
//
//  Created by Byron on 01/03/21.
//

import Foundation
import Alamofire

final class pokemonAPI{
    

    // variables
    static let shared = pokemonAPI()
    private let KStatusOK = 200...299
    var pokemons: [Pokemon] = []
    var items: [Displayable] = []
    
    
    
    func getPokemons(url:String,range:String, success: @escaping (_ pokemon: [Pokemon])->(), failure: @escaping (_ error: Error?) ->() ){
        let url = "\(url)\(range)"
        AF.request(url, method: .get).validate(statusCode: KStatusOK).responseDecodable(of: Pokemons.self ){
            response in
            if let pokemon = response.value{
                
                success(pokemon.all!)
            }else{
                failure(response.error)
            }
            
        }
    }
    
    
    func getPokemonData(url:String,success: @escaping (_ poke:PokemonBase)->(), failure: @escaping (_ error: Error?) ->() ){
        let url = "\(url)"
        AF.request(url, method: .get).validate(statusCode: KStatusOK).responseDecodable(of: PokemonBase.self ){
            response in
            if let pokemon = response.value{
                print(pokemon.types![0].type?.name ?? "nill")
                success(pokemon)
            }else{
                failure(response.error)
            }
            
        }
    }
    
    func getPokemonSpecies(url:String,success: @escaping (_ species:Species)->(), failure: @escaping (_ error: Error?) ->() ){
            let url = "\(url)"
            AF.request(url, method: .get).validate(statusCode: KStatusOK).responseDecodable(of: Species.self ){
                response in
                if let pokemon = response.value{
                    print(pokemon.flavorTextEntries?[7].flavorText ?? "nill")
                    success(pokemon)
                }else{
                    failure(response.error)
                }
                
            }
        }
    
}
