//
//  getAGPIService.swift
//  SurucuEhliyeti
//
//  Created by Mehmet Ali Kılıçlı on 10.05.2023.
//

import Foundation
import Firebase


class AGPIService {
    
    var AGPIServiceVeri = [AracGostergeIsaret]()

    
    func getAGPIData() -> [AracGostergeIsaret]{
        let firestoreDatabase = Firestore.firestore()
        
        firestoreDatabase.collection("AGPIDatas").addSnapshotListener { snapshot, error in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                if snapshot?.isEmpty != true && snapshot != nil {
                    
                    for document in snapshot!.documents {
                        if let agpiImage = document.get("agpiImage") as? String{
                            if let agpiText = document.get("agpiText") as? String{
                                if let id = document.get("id") as? Int {
                                    var firebaseAGPI = AracGostergeIsaret(id: id, aracGostergeImage: agpiImage, aracGosterge: agpiText)
                                    self.AGPIServiceVeri.append(firebaseAGPI)
                                    print(agpiImage)
                                    print(id)
                                    print(agpiText)
                                }
                            }
                        }
                    }
                }
            }
        }
         return AGPIServiceVeri
    }

}



