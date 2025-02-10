//
//  MyProjectSampleApp.swift
//  MyProjectSample
//
//  Created by Vidhyapathi on 10/02/25.
//

import SwiftUI

@main
struct MyProjectSampleApp: App {
    var body: some Scene {
        WindowGroup {
            CountryListView(viewModel: CountryListViewModel())
        }
    }
}
