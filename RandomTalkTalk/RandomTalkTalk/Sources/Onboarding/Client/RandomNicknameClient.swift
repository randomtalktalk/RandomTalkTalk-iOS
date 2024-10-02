//
//  RandomNicknameClient.swift
//  RandomTalkTalk
//
//  Created by 조성민 on 10/2/24.
//

import ComposableArchitecture

struct RandomNicknameClient {
    
    var fetch: () -> String
    
}

extension RandomNicknameClient: DependencyKey {
    
    static let liveValue = Self(
        fetch: {
            let adj = [
                "화려한", "재밌는", "멋진",
                "귀여운", "달콤한", "잘생긴",
                "예쁜", "아름다운", "밝은",
                "어두운", "거무튀튀한", "힘쎈"
            ]
            let noun = [
                "사자", "호랑이", "원숭이",
                "뱀", "거북이", "고양이",
                "토끼", "돼지", "닭",
                "늑대", "말", "얼룩말"
            ]
            guard let randomAdj = adj.randomElement(), let randomNoun = noun.randomElement() else {
                return ""
            }
            
            return randomAdj + " " + randomNoun
        }
    )
    
}

extension DependencyValues {
    
    var randomNickname: RandomNicknameClient {
        get { self[RandomNicknameClient.self] }
        set { self[RandomNicknameClient.self] = newValue }
    }
    
}
