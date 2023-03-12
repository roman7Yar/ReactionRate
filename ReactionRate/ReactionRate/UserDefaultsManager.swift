//
//  MyTimer.swift
//  ReactionRate
//
//  Created by Roman Yarmoliuk on 18.12.2022.
//

import Foundation

class SettingsManager {
    
    private let vibrationKey = "vibration"
    private let soundKey = "sound"
    private let volumeKey = "volume"
    private let appearanceKey = "appearance"
    private let colorKey = "color"
    
    
    private init() {
        UserDefaults.standard.register(defaults: [
            vibrationKey : true,
            soundKey : true,
            volumeKey : 0.5,
            appearanceKey : 0,
            colorKey : 0
        ])
    }
    
    static let shared = SettingsManager()
    
    func getVibration() -> (Bool) {
        UserDefaults.standard.bool(forKey: vibrationKey)
    }
    
    func setVibration(value: Bool)  {
        UserDefaults.standard.set(value, forKey: vibrationKey)
    }
    
    func getSound() -> (Bool) {
        UserDefaults.standard.bool(forKey: soundKey)
    }
    
    func setSound(value: Bool)  {
        UserDefaults.standard.set(value, forKey: soundKey)
    }
    
    func getVolume() -> (Float) {
        UserDefaults.standard.float(forKey: volumeKey)
    }
    
    func setVolume(value: Float)  {
        UserDefaults.standard.set(value, forKey: volumeKey)
    }
    
    func getAppearance() -> (Int) {
        UserDefaults.standard.integer(forKey: appearanceKey)
    }
    
    func setAppearance(value: Int)  {
        UserDefaults.standard.set(value, forKey: appearanceKey)
    }
    
    func getColor() -> (Int) {
        UserDefaults.standard.integer(forKey: colorKey)
    }
    
    func setColor(value: Int)  {
        UserDefaults.standard.set(value, forKey: colorKey)
    }
}


class UserDefaultsManager {
    private init() {
        UserDefaults.standard.register(defaults: [
            "background" : "000000",
            "score" : 0,
            "volume" : true
        ])
    }
    
    static let shared = UserDefaultsManager()
    
    func getBackground() -> (String?) {
        UserDefaults.standard.string(forKey: "background")
    }
    
    func setBackground(value: String)  {
        UserDefaults.standard.set(value, forKey: "background")
    }
    
    func getScore() -> (Double) {
        UserDefaults.standard.double(forKey: "score")
    }
    
    func setScore(value: Double) {
        UserDefaults.standard.set(value, forKey: "score")
    }
    
    func getVolume() -> (Bool) {
        UserDefaults.standard.bool(forKey: "volume")
    }
    func setVolume(value: Bool) {
        UserDefaults.standard.set(value, forKey: "volume")
    }
    

}

/*
 1. підрефакторити код прибравши MyTimer
 2. підібрати красивіші кольори для бекграунду та кнопок
 3. реалізувати можливість прибирати звук по всьому проекту в будь якому місці і відображати це скрізь
 4. змінювати разом з бекграундом кнопки, лейбли та вʼю
 
 */
