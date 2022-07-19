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
    
    func getNominalVoteList(pageToRequest: Int) -> Observable<NominalVoteItems>{
        return RxAlamofire
            .json(.get, "https://como-vota-2597.rj.r.appspot.com/votes", parameters: ["page_to_request": pageToRequest])
            .map { data in
                let jsonData = try JSONSerialization.data(withJSONObject: data)
                return try JSONDecoder().decode(NominalVoteItems.self, from: jsonData)
            }
    }
}
