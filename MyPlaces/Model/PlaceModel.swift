//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Александр on 21.08.21.
//

import RealmSwift

class Place: Object {
    @Persisted var name = ""
    @Persisted var location: String?
    @Persisted var type: String?
    @Persisted var imageData: Data?
    
       let restaurantNames = [
            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
            "Классик", "Love&Life", "Шок", "Бочка"
        ]
    
   func savePlaces() {
        for place in restaurantNames {
            
           let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
           let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Ufa"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
      } 
   }
}
