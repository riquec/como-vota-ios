//
//  NominalVoteViewModel.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 18/06/22.
//

import Foundation
import ETBinding
import RxAlamofire
import RxSwift

class NominalVoteViewModel : ObservableObject {
    
    @Published var nominalVoteViewState = NominalVoteViewState()
    
    private let disposeBag = DisposeBag.init()
    
    init() {
        print("init called")
        getNominalVoteList()
    }
    
    private func getNominalVoteList() {
        NominalVoteService().getNominalVoteList()
            .do(
                onNext: { list in
                    var voteItemList = [VoteItem]()
                    
                    list.forEach { item in
                        let newVoteItem = VoteItem(id: item.id, description: item.title, date: item.votedAt)
                        voteItemList.append(newVoteItem)
                        
                    }
                    
                    self.nominalVoteViewState.voteItems = voteItemList
                },
                onError: {error in
                    print(error)
                },
                onCompleted: {
                    self.nominalVoteViewState.isLoading = false
                },
                onSubscribe: {
                    self.nominalVoteViewState.isLoading = true
                },
                onDispose: {
                    print("on dispose")
                }
            )
            .observe(on: MainScheduler.instance)
            .subscribe()
            .disposed(by: disposeBag)
    }
    
}
