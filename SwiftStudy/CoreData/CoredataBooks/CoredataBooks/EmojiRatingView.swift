//
//  EmojiRatingView.swift
//  CoredataBooks
//
//  Created by Desenvolvimento on 16/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int16
    
    var body: some View {
        switch rating {
        case 1:
            return Text("8(")
        case 2:
            return Text(":(")
        case 3:
            return Text(":|")
        case 4:
            return Text(":D")
        default:
            return Text("*_*")
        }
    }
}

struct EmojiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiRatingView(rating: 3)
    }
}
