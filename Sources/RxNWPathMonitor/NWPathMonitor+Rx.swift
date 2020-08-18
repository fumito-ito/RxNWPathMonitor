//
//  NWPathMonitor+Rx.swift
//  RxNWPathMonitor
//
//  Created by 伊藤史 on 2020/08/17.
//  Copyright © 2020 Fumito Ito. All rights reserved.
//

import Network
import RxSwift

// to access `rx` keyword
extension NWPathMonitor: ReactiveCompatible {}

extension Reactive where Base == NWPathMonitor {
    /// Create observable stream to monitor path changes.
    ///
    /// This observable automatically starts monitoring. If this observable is disposed, minitoring is automatically canceled.
    ///
    /// - Parameter queue: a queue on which to deliver path events.
    /// - Returns: Observable to monitor path changes.
    func pathUpdate(on queue: DispatchQueue = .global(qos: .background)) -> Observable<NWPath> {
        return Observable.create { [weak base] observer -> Disposable in
            base?.pathUpdateHandler = observer.onNext
            base?.start(queue: queue)

            return Disposables.create {
                base?.cancel()
            }
        }
    }
}
