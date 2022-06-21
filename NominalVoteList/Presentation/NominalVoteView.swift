//
//  NominalVoteListView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 14/06/22.
//

import SwiftUI

struct NominalVoteView: View {
    
    @StateObject private var viewModel = NominalVoteViewModel()
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ProgressView()
                .hidden(!$viewModel.nominalVoteViewState.isLoading.wrappedValue)
            VStack {
                HStack {
                    Text("ÚLTIMAS VOTAÇÕES NOMINAIS")
                        .font(.boldFont(size: TextSize.LABEL_REGULAR_SIZE))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .padding(.leading, Spacing.SPACING_08)
                        .padding(.top, Spacing.SPACING_08)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    List($viewModel.nominalVoteViewState.voteItems.wrappedValue) { voteItem in
                        VoteRowView(voteItem: voteItem)
                            .listRowSeparator(Visibility.hidden)
                            .listRowBackground(Color.clear)
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    .listStyle(.plain)
                    .onAppear() {
                        UITableView.appearance().backgroundColor = .clear
                        UITableViewCell.appearance().backgroundColor = .clear
                    }
                }
            }.hidden($viewModel.nominalVoteViewState.isLoading.wrappedValue)
        }
        .onAppear(perform: {
           
        })
    }
}

struct NominalVoteListView_Previews: PreviewProvider {
    static var previews: some View {
        NominalVoteView()
    }
}
