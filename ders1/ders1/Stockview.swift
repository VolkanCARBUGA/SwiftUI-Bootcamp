//
//  Stockview.swift
//  ders1
//
//  Created by Volkan Çarbuğa on 23.08.2025.
//

import SwiftUI
struct Stock:Identifiable, Hashable {
    let id = UUID()
    let symbol: String
    var price: Double
    var change: Double
}
struct Stockview: View {
    let stocks: [Stock] = [
        Stock( symbol: "AAPL", price: 189.23, change: 1.15),
        Stock( symbol: "MSFT", price: 325.67, change: -0.45),
        Stock( symbol: "GOOGL", price: 142.12, change: 2.05),
        Stock( symbol: "AMZN", price: 128.54, change: -1.22),
        Stock( symbol: "TSLA", price: 255.33, change: 3.10),
        Stock(symbol: "NFLX", price: 412.90, change: 0.75),
        Stock( symbol: "NVDA", price: 480.20, change: 5.60),
        Stock( symbol: "META", price: 298.44, change: -0.88),
        Stock( symbol: "BABA", price: 92.18, change: 1.25),
        Stock( symbol: "ORCL", price: 110.65, change: 0.40)
    ]
    @State var selectedItem: Stock?
    var body: some View {
        NavigationStack{
            List(stocks){stock in
                Button{
                    selectedItem=stock
                }label:{
                    StockItem(stock: stock)
                }
                
                //
            }
            .listStyle(.grouped)
            .navigationDestination(item: $selectedItem ){stock in
                OrderView(stock: stock)
                
            }
            
        }
        
    }
}



#Preview {
    Stockview()
}
