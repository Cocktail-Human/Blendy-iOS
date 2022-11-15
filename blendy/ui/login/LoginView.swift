//
//  LoginView.swift
//  cocktailapp
//
//  Created by 양승민 on 2022/11/10.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.colorScheme) var scheme
    
    @State var show = false
    @State var id = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            Image("Cocktail")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(minWidth: 0, maxWidth: .infinity)
                .opacity(0.72)
            
            VStack {
                Color(.white)
                    .mask(Image("LogoForeground")
                        .resizable())
                    .frame(width: 80, height: 80)
                    .shadow(radius: 8)
                    .padding(.bottom, 24)
                
                
                VStack {
                    TextField("학번", text: $id)
                        .keyboardType(.numberPad)
                        .padding(.horizontal, 16.0)
                        .padding(.vertical, 15.0)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.background.opacity(0.4)
                                     )
                        )
                        .padding([.top, .leading, .trailing])
                    
                    SecureField("비밀번호", text: $password)
                        .padding(.horizontal, 16.0)
                        .padding(.vertical, 15.0)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.background.opacity(0.4)
                                     )
                        )
                        .padding(.horizontal, 16.0)
                    
                    
                    Button {
                        show.toggle()
                    } label: {
                        Text("로그인")
                            .foregroundColor(Color("OnPrimary"))
                            .padding(.horizontal, 16.0)
                            .padding(.vertical, 18.0)
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .buttonStyle(MediumButton())
                    .alert(isPresented: $show) {
                                Alert(title: Text("Title"), message: Text("This is a alert message"), dismissButton: .default(Text("Dismiss")))
                            }
                    
                    Text("비밀번호 찾기")
                        .foregroundColor(Color("OnBackground").opacity(0.87))
                        .padding(.bottom, 24.0)
                }
                .background(
                    .ultraThinMaterial,
                    in: RoundedRectangle(cornerRadius: 16)
                )
                .padding(16)
                .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.12), radius: 16)
                
                HStack(alignment: .top) {
                    Color("OnBackground")
                        .opacity(0.87)
                        .frame(width: 16, height: 16)
                        .mask (
                            Image("CircleInfo")
                                .resizable()
                                .frame(width: 16, height: 16)
                        )
                    
                    Text("이 앱은 칵테일 사람 동아리 활동을 위해 제작된 앱이며, 관계자의 승인 후 로그인할 수 있습니다.")
                        .foregroundColor(Color("OnBackground").opacity(0.87))
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 24)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
