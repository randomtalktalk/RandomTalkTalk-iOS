//
//  OnboardingFeature.swift
//  RandomTalkTalk
//
//  Created by 조성민 on 10/2/24.
//

import ComposableArchitecture

@Reducer
struct OnboardingFeature {
    
    @ObservableState
    struct State: Equatable {
        
        var nickname: String = "초기 닉네임" // TODO: 초기값 설정
        
    }
    
    enum Action {
        
        case diceButtonTapped
        case chatButtonTapped
        
    }
    
    @Dependency(\.randomNickname) var randomNickname
    
    var body: some ReducerOf<Self> {
        
        Reduce { state, action in
            switch action {
            case .diceButtonTapped:
                state.nickname = randomNickname.fetch()
                return .none
            case .chatButtonTapped:
                // TODO: 채팅 매칭 시작
                return .none
            }
        }
        
    }
    
}
