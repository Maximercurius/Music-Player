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
          case getTracks
      }
    }
    struct Response {
      enum ResponseType {
        case some
          case presentTraks
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
          case displayTraks
      }
    }
  }
  
}
