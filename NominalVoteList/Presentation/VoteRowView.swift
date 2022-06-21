//
//  VoteRowView.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 14/06/22.
//

import SwiftUI

struct VoteRowView: View {
    var voteItem: VoteItem
    
    var body: some View {
            VStack {
                HStack {
                    Text(voteItem.description)
                        .font(.boldFont(size: TextSize.LABEL_SMALL_SIZE))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                }.padding(.bottom)
                HStack {
                    Text(voteItem.date)
                        .bold()
                        .font(.boldFont(size: TextSize.LABEL_SMALL_SIZE))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Saiba mais >")
                        .bold()
                        .font(.boldFont(size: TextSize.LABEL_SMALL_SIZE))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                }.frame(maxWidth: .infinity)
            }
            .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: BorderSize.ROUNDED_BUTTON_BORDER_SIZE
                                    ).stroke(.white, lineWidth: 0.5)
                )

    }
}

struct VoteRowView_Previews: PreviewProvider {
    static var previews: some View {
        VoteRowView(voteItem: VoteItem(
            id: UUID().uuidString,
            description: "Requiremento de urgência para PL que torna crime descumprimento na ordem de vacinas",
            date: "10/10/2010")
        )
    }
}
