//
//  UpgradedUiButton.swift
//  SwiftDi
//
//  Created by Hoshiar Sher on 8/30/21.
//

import SwiftUI

struct UpgradedUiButton: View {
    var body: some View {
        Button(action: actionBtn) {
            Text("Sign In")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
            
        }
        .frame(width: 200, height: 60)
        .background(
            ZStack {
                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .foregroundColor(.white)
                    .blur(radius: 4)
                    .offset(x: -8, y: -8)
                
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(
                        LinearGradient(gradient:
                                        Gradient(colors: [ Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                                                           Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) ,
                                                           Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)),
                                                           Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]),
                                       startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    //       .foregroundColor(Color(#colorLiteral(red: 0.8060724139, green: 0.863902986, blue: 0.9824454188, alpha: 1)))
                    .padding(2)
                    .blur(radius: 2)
                
                
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
    }
    
    func actionBtn(){
        
    }
}


struct UpgradedUiButton_Previews: PreviewProvider {
    static var previews: some View {
        UpgradedUiButton()
    }
}
