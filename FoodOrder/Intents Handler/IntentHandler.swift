//
//  IntentHandler.swift
//  Intents Handler
//
//  Created by Muhammad Aamir on 19/07/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import Intents


class IntentHandler: INExtension, INStartWorkoutIntentHandling,INEndWorkoutIntentHandling {
    
    func handle(startWorkout intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
        print("Start Workout Intent:", intent)
        let userActive: NSUserActivity? = nil
        guard let spokenPhrase = intent.workoutName?.spokenPhrase else	{
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActive))
            return
        }
        print(spokenPhrase)
        completion(INStartWorkoutIntentResponse(code: .continueInApp, userActivity: userActive))
    }
    func handle(endWorkout intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void) {
        //
    }
}

