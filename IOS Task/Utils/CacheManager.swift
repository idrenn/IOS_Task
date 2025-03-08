//
//  Cache Manager.swift
//  IOS Task
//
//  Created by Idrees Numan on 08/03/2025.
//

import UIKit

class CacheManager {
    
    //Static Shared object instant
    static let shared = CacheManager()
    
    //private constant image cache object instant, Uses NSCache for images and efficient loading
    private let imageCache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getImage(named name: String) -> UIImage? {
        
        //if image is already loaded, it will return cached image
        if let cachedImage = imageCache.object(forKey: name as NSString) {
            
            return cachedImage
        }
        
        //if image available by name then it will allow to set image by name else it will return nil
        guard let image = UIImage(named: name) else { return nil}
        imageCache.setObject(image, forKey: name as NSString)
        return image
    }
}
