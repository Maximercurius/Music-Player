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
          case getTracks(searchTerm: String)
      }
    }
    struct Response {
      enum ResponseType {
          case presentTraks(searchResponse: SearchResponse?)
          case presentFooterView
      }
    }
    struct ViewModel {
      enum ViewModelData {
          case displayTraks(searchViewModel: SearchViewModel)
          case displayFooterView
      }
    }
  }
  
}
struct SearchViewModel {
    struct Cell: TrackCellViewModel {
        var iconUrlString: String?
        var trackName: String
        var collectionName: String
        var artistName: String
        var previewUrl: String?
        
    }
    let cells: [Cell]
}
