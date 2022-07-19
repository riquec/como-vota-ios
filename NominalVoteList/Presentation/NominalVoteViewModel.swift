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
    
    private var pageToRequest = 0
    
    init() {
        getNominalVoteList()
    }
    
    func onScrollEnded() {
        print("onScrollEnded")
        getNominalVoteList()
    }
    
    private func getNominalVoteList() {
        pageToRequest += 1
        NominalVoteService().getNominalVoteList(pageToRequest: pageToRequest)
            .do(
                onNext: { votes in
                    var voteItemList = [VoteItem]()
                    
                    votes.items.forEach { item in
                        let newVoteItem = VoteItem(id: UUID().uuidString, description: item.title, date: item.date)
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
