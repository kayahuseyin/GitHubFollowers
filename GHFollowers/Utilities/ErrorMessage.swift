//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 6.01.2024.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please try again."
    case invalidResponse = "Invalid response from the server, Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    
}

//Enum'larda Raw Value enumdaki tum case'lere confirm eder
//Associated valeusler her case icin ayri ayri confirm eder. farkli typler confirm etmek icin
