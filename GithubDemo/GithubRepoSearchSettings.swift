//
//  GithubRepoSearchSettings.swift
//  GithubDemo
//
//  Created by Swapnil Tamrakar on 2/14/17.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import Foundation

// Model class that represents the user's search settings
struct GithubRepoSearchSettings {
    var searchString: String?
    var minStars = 0
    
    init() {
        
    }
}
