//
//  SwiftUIView.swift
//  SwiftDi
//
//  Created by Hoshiar Sher on 8/30/21.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    var body: some View {
        VStack(spacing: 50){
            UpdatedButton()
            UpgradedUiButton()

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 0.4639488372)))
        .ignoresSafeArea(.all)
        
        
    }
    func signIn(){}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSwiftUIView()
    }
}


