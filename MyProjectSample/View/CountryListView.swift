//
//  ContentView.swift
//  MyProjectSample
//
//  Created by Vidhyapathi on 07/02/25.
//

import SwiftUI

struct CountryListView: View {
    
    @ObservedObject var viewModel: CountryListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.countries.indices, id: \.self) { index in
                    Section(
                        header: HStack {
                            Text(viewModel.countries[index].admin_name ?? "")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                viewModel.collapseState(index: index)
                            }) {
                                Image(systemName: viewModel.countries[index].isExpanded ? "chevron.up" : "chevron.down")
                                    .foregroundColor(.blue)
                            }
                        }
                    ) {
                        if viewModel.countries[index].isExpanded {
                            Text(viewModel.countries[index].city ?? "")
                        }
                    }
                }
            }
            .navigationTitle("Collapsible List by State")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Reverse") {
                        self.viewModel.reverseList()
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        CountryListView(viewModel: CountryListViewModel())
    }
}
