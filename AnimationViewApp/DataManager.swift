//
//  DataManager.swift
//  AnimationViewApp
//
//  Created by Артур Сахбиев on 20.05.2022.
//


import Spring

class DataManager{
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .shake,
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn,
        .zoomOut
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
