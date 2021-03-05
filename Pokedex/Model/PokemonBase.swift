//
//  PokemonBase.swift
//  Pokedex
//
//  Created by Byron on 26/02/21.
//

import Foundation

struct PokemonBase : Decodable {
    let abilities : [Abilities]?
    let base_experience : Int?
    let height : Int?
    let id : Int?
    let is_default : Bool?
    let name : String?
    let order : Int?
    let sprites : Sprites?
    let stats : [Stats]?
    let types : [Types]?
    let weight : Int?

    enum CodingKeys: String, CodingKey {

        case abilities = "abilities"
        case base_experience = "base_experience"
        case height = "height"
        case held_items = "held_items"
        case id = "id"
        case is_default = "is_default"
        case moves = "moves"
        case name = "name"
        case order = "order"
        case species = "species"
        case sprites = "sprites"
        case stats = "stats"
        case types = "types"
        case weight = "weight"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        abilities = try values.decodeIfPresent([Abilities].self, forKey: .abilities)
        base_experience = try values.decodeIfPresent(Int.self, forKey: .base_experience)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        is_default = try values.decodeIfPresent(Bool.self, forKey: .is_default)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        order = try values.decodeIfPresent(Int.self, forKey: .order)
        sprites = try values.decodeIfPresent(Sprites.self, forKey: .sprites)
        stats = try values.decodeIfPresent([Stats].self, forKey: .stats)
        types = try values.decodeIfPresent([Types].self, forKey: .types)
        weight = try values.decodeIfPresent(Int.self, forKey: .weight)
        
    }

}

struct Types: Decodable {
    let slot: Int?
    let type: Type?
    
    
    enum CodingKeys: String, CodingKey {
        case slot = "slot"
        case type = "type"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        slot = try values.decodeIfPresent(Int.self, forKey: .slot)
        type = try values.decodeIfPresent(Type.self, forKey: .type)
        
    }
}

struct Type : Decodable {
    let name : String?
    let url : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case url = "url"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }

}

struct Sprites : Decodable {
    let backDefault : String?
    let backFemale : String?
    let backShiny : String?
    let backShiny_female : String?
    let frontDefault : String?
    let frontFemale : String?
    let frontShiny : String?
    let frontShinyFemale : String?
    let other : Other?
    
    

    enum CodingKeys: String, CodingKey {

        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShiny_female = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
        case other = "other"
            
        
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        backDefault = try values.decodeIfPresent(String.self, forKey: .backDefault)
        backFemale = try values.decodeIfPresent(String.self, forKey: .backFemale)
        backShiny = try values.decodeIfPresent(String.self, forKey: .backShiny)
        backShiny_female = try values.decodeIfPresent(String.self, forKey: .backShiny_female)
        frontDefault = try values.decodeIfPresent(String.self, forKey: .frontDefault)
        frontFemale = try values.decodeIfPresent(String.self, forKey: .frontFemale)
        frontShiny = try values.decodeIfPresent(String.self, forKey: .frontShiny)
        frontShinyFemale = try values.decodeIfPresent(String.self, forKey: .frontShinyFemale)
        other = try values.decodeIfPresent(Other.self, forKey: .other)
               
            }
}

struct Stat : Decodable {
    let name : String?
    let url : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case url = "url"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }

}

struct Stats: Decodable {
    let baseStat: Int?
    let effort: Int?
    let stat: Stat?
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case affort = "effort"
        case stat = "stat"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        baseStat = try values.decodeIfPresent(Int.self, forKey: .baseStat)
        effort = try values.decodeIfPresent(Int.self, forKey: .affort)
        stat = try values.decodeIfPresent(Stat.self, forKey: .stat)
    }
}


struct Species: Decodable {

    let flavorTextEntries : [FlavorTextEntries]?
    enum CodingKeys: String, CodingKey {
        case flavorTextEntries = "flavor_text_entries"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        flavorTextEntries = try values.decodeIfPresent([FlavorTextEntries].self, forKey: .flavorTextEntries)
        
    }

}

struct FlavorTextEntries : Decodable {
    let flavorText : String?
    enum CodingKeys: String, CodingKey {
        case flavorText = "flavor_text"
    }
}


struct Pokemons : Decodable {
    let count:Int?
    let next:String?
    let previous:String?
    let all: [Pokemon]?
    
    enum CodingKeys: String, CodingKey {
        case count
        case next
        case previous
        case all = "results"
    }
}


struct Pokemon: Decodable {
    let name: String?
    let url: String?
    //let id: Int
}


extension Pokemon: Displayable{

    var nameLabelText: String {
        name!
    }
    
    var urlPokemon: String {
        url!
    }
    
}

protocol Displayable {
    var nameLabelText: String { get }
  var urlPokemon: String { get }
}

struct Other : Decodable {
    
    let officialArtwork : Oficcial?

    enum CodingKeys: String, CodingKey {

        
        case officialArtwork = "official-artwork"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        officialArtwork = try values.decodeIfPresent(Oficcial.self, forKey: .officialArtwork)
    }

}


struct Oficcial: Decodable
{
    let frontDefault: String?
    enum CodingKeys: String, CodingKey {

        case frontDefault = "front_default"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        frontDefault = try values.decodeIfPresent(String.self, forKey: .frontDefault)
    }

}



struct Ability : Decodable {
    let name : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }

}

struct Abilities : Decodable {
    let ability : Ability?
    let isHidden : Bool?
    let slot : Int?

    enum CodingKeys: String, CodingKey {

        case ability = "ability"
        case isHidden = "is_hidden"
        case slot = "slot"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ability = try values.decodeIfPresent(Ability.self, forKey: .ability)
        isHidden = try values.decodeIfPresent(Bool.self, forKey: .isHidden)
        slot = try values.decodeIfPresent(Int.self, forKey: .slot)
    }

}

