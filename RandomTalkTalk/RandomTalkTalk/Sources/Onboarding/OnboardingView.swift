//
//  OnboardingView.swift
//  RandomTalkTalk
//
//  Created by 조호근 on 9/26/24.
//

import SwiftUI
import ComposableArchitecture

struct OnboardingView: View {
    
    @Bindable var store: StoreOf<OnboardingFeature>
    
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
                Text(store.nickname)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                        
                    )
                    .onAppear {
                        store.send(.diceButtonTapped)
                    }
                
                Spacer()
                
                Button {
                    store.send(.diceButtonTapped)
                } label: {
                    Image(systemName: "dice")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .tint(.black)
                }
            }
            .padding(.horizontal, 50)
            
            Button {
                // TODO: 채팅 매칭 버튼 눌렸을 때 동작
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
    OnboardingView(
        store: Store(
            initialState: OnboardingFeature.State(),
            reducer: {
                OnboardingFeature()
            }
        )
    )
}
