//
//  LoginRemoteDataSource.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 06/04/22.
//

import Foundation
import RxAlamofire
import RxSwift

class LoginRemoteDataSource {
    func doLogin(requestData: LoginRequestPayload) -> Observable<AuthenticatedUserResponsePayload> {
        return RxAlamofire.json(.post, ApiConstants.BASE_URL)
            .map({ val in
                val as! AuthenticatedUserResponsePayload
            })
    }
}
