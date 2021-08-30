//
//  SwiftUIView.swift
//  SwiftDi
//
//  Created by Hoshiar Sher on 8/30/21.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    var body: some View {
        VStack {
            Text("Button")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 0.4639488372)))
        .ignoresSafeArea(.all)
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSwiftUIView()
    }
}