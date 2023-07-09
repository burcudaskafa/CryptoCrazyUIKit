//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Burcu Daşkafa on 16.05.2023.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numberInRowsInSection() -> Int {
        return cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}



struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
    var name : String{
        return self.cryptoCurrency.currency
    }
    var price : String{
        return self.cryptoCurrency.price
    }
    
}
