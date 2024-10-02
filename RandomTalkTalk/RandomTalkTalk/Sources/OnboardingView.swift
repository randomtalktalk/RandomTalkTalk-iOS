//
//  OnboardingView.swift
//  RandomTalkTalk
//
//  Created by 조호근 on 9/26/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        VStack(spacing: 50) {
            Text("랜덤 톡톡")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                    
                )
            
            HStack {
                Text("닉네임")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                        
                    )
                
                Spacer()
                
                Button {
                    print("주사위 눌림")
                } label: {
                    Image(systemName: "dice")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .tint(.black)
                }
            }
            .padding(.horizontal, 50)
            
            Button {
                print("버튼 눌림")
            } label: {
                Text("채팅 시작")
                    .font(.largeTitle)
                    .padding()
                    .overlay (
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
        }
        .padding(.bottom, 300)
    }
}

#Preview {
    OnboardingView()
}
