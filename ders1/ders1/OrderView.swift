//
//  OrderView.swift
//  ders1
//
//  Created by Volkan Çarbuğa on 24.08.2025.
//

import SwiftUI

struct OrderView: View {
    var stock:Stock
    @State var amount: Int = 1
    init(stock: Stock) {
        self.stock = stock
    }
    var body: some View {
        Form {
            Section("Stock Info") {
                Text(stock.symbol)
            }
            Section("Fiyat") {
                Text("\(stock.price, specifier: "%.2f") $")
            }
            Section("Değişim") {
                Text("\(stock.change, specifier: "%.2f") %")
                    .foregroundColor(stock.change >= 0 ? .green : .red)
            }
            Section("Adet") {
                Stepper(value: $amount) {
                    Text("\(amount>0 ? amount : 0)")
                }
                
                
                
            }
            Section("ödenecek tutar") {
                Text("\(Double(amount > 0 ? amount : 0) * stock.price, specifier: "%.2f") $")
            
            }
        }
    }
}

#Preview {
    OrderView(stock: Stock( symbol: "AAPL", price: 189.23, change: 1.15))
}
