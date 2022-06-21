//
//  NominalVoteService.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 19/06/22.
//

import Foundation
import RxAlamofire
import RxSwift

class NominalVoteService {
    
    func getNominalVoteList() -> Observable<[NominalVote]>{
        return RxAlamofire
            .json(.get, "https://como-vota-2597.rj.r.appspot.com/news/nominal")
            .map { data in
                let jsonData = try JSONSerialization.data(withJSONObject: data)
                return try JSONDecoder().decode([NominalVote].self, from: jsonData)
            }
    }
}
