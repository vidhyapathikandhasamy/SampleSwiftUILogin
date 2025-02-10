//
//  CountryListViewModel.swift
//  MyProjectSample
//
//  Created by Vidhyapathi on 07/02/25.
//

import Foundation

class CountryListViewModel: ObservableObject {
    
    @Published var countries: [Country] = []
    
    private let countryService: CountryServiceProtocol
    
    init(countryService: CountryServiceProtocol = CountryService()) {
        self.countryService = countryService
        self.loadCountries()
    }
    
    private func loadCountries() {
        if let countries = countryService.fetchCountries() {
            self.countries = countries
        }
    }
    
    func collapseState(index: Int) {
        self.countries[index].isExpanded.toggle()
    }
    
    func reverseList() {
        self.countries.reverse()
    }
}
