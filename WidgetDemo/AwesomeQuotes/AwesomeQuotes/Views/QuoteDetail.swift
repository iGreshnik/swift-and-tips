//
//  QuoteDetail.swift
//  AwesomeQuotes
//
//  Created by Pedro Rojas on 1/18/21.
//

import SwiftUI
import WidgetKit

struct QuoteDetail: View {
    let quote: Quote
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Image("image\(quote.imageNumber)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.6)
                .frame(maxWidth: UIScreen.main.bounds.width)
                .clipped()
                .ignoresSafeArea()
            
            VStack {
                Text("\"\(quote.description)\"")
                    .font(.custom("SignPainter", fixedSize: 40))
                    .foregroundColor(.white)
                    .frame(maxHeight: 200)

                Text("\(quote.author)/\(quote.profession)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
        }
        .onAppear {
            // it forces a reload
            //WidgetCenter.shared.reloadTimelines(ofKind: "AwesomeQuoteWidget")
        }
    }
}

struct QuoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetail(quote: Quote.sample[0])
    }
}
