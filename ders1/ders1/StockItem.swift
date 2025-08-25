//
//  StockItem.swift
//  ders1
//
//  Created by Volkan Çarbuğa on 23.08.2025.
//

import SwiftUI

struct StockItem: View {
    var stock:Stock
    var body: some View {
        HStack{
            Text(stock.symbol).font(.headline
            ) .foregroundStyle(Color.black)
            .padding(20)
            Spacer()
            Text(String(format: "%2.f $",stock.price))
                .font(.largeTitle)
                .foregroundStyle(Color.black)
                .padding(10)
            Text(String(format: "%2.f %%", stock.change ))
                .font(.largeTitle)
                .foregroundColor(stock.change > 0 ? .green: .red)
                .padding(10)
        }
    }
}

#Preview {
    StockItem(
        stock: Stock( symbol: "AAPL", price: 189.23, change: 1.15),
    )
}
