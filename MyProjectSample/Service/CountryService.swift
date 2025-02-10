//
//  CountryService.swift
//  MyProjectSample
//
//  Created by Vidhyapathi on 07/02/25.
//

import Foundation

protocol CountryServiceProtocol {
    func fetchCountries() -> [Country]?
}

class CountryService: CountryServiceProtocol {
    
    func fetchCountries() -> [Country]? {
        guard let url = Bundle.main.url(forResource: "countries", withExtension: "json") else {
            print("Failed to locate countries.json in bundle.")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let countries = try decoder.decode([Country].self, from: data)
            return countries
        } catch {
            print("Error decoding countries JSON: \(error)")
            return nil
        }
    }
}
