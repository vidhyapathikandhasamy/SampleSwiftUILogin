//
//  countryModel.swift
//  MyProjectSample
//
//  Created by Vidhyapathi on 07/02/25.
//
import Foundation

struct Country: Identifiable, Codable {
    var id = UUID()
    let city : String?
    let lat : String?
    let lng : String?
    let country : String?
    let iso2 : String?
    let admin_name : String?
    let capital : String?
    let population : String?
    let population_proper : String?
    var isExpanded: Bool = false
    
    mutating func toggle() {
        isExpanded.toggle()
    }
    
    enum CodingKeys: String, CodingKey {
        
        case city = "city"
        case lat = "lat"
        case lng = "lng"
        case country = "country"
        case iso2 = "iso2"
        case admin_name = "admin_name"
        case capital = "capital"
        case population = "population"
        case population_proper = "population_proper"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        lng = try values.decodeIfPresent(String.self, forKey: .lng)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        iso2 = try values.decodeIfPresent(String.self, forKey: .iso2)
        admin_name = try values.decodeIfPresent(String.self, forKey: .admin_name)
        capital = try values.decodeIfPresent(String.self, forKey: .capital)
        population = try values.decodeIfPresent(String.self, forKey: .population)
        population_proper = try values.decodeIfPresent(String.self, forKey: .population_proper)
    }
}
