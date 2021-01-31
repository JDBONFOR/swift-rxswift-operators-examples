import UIKit
import RxSwift
import PlaygroundSupport

/*
 RxSwift Operators
 Filter : return element that apply with condition
 */


// Filter
let disposeBag = DisposeBag()

Observable.of(1,2,3,4,5,6,7)
    .filter { ($0 % 2 == 0 ) }
    .subscribe(onNext: {
        print($0)
    })
    .disposed(by: disposeBag)
