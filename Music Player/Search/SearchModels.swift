//
//  SearchModels.swift
//  Music Player
//
//  Created by Makarov_Maxim on 26.05.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum Search {
   
  enum Model {
    struct Request {
      enum RequestType {
        case some
          case getTracks(searchTerm: String)
      }
    }
    struct Response {
      enum ResponseType {
        case some
          case presentTraks(searchResponse: SearchResponse?)
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
          case displayTraks(searchViewModel: SearchViewModel)
      }
    }
  }
  
}
struct SearchViewModel {
    struct Cell {
        var iconUrlString: String?
        var trackName: String
        var collectionName: String?
        var artistName: String
        
    }
    let cells: [Cell]
}
