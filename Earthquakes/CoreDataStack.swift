////
////  CoreDataStack.swift
////  Earthquakes
////
////  Created by Reza Harris on 23/10/21.
////
//
//import Foundation
//import CoreData
//
//class CoreDataStack {
//    lazy var persistentContainer: NSPersistentContainer = {
//
//        let container = NSPersistentCloudKitContainer(name: "Earthquakes")
//
//        guard let description = container.persistentStoreDescriptions.first else {
//            fatalError("###\(#function): Failed to retrieve a persistent store description,.")
//        }
//
//        description.setOption(true as NSNumber, forKey: NSPersistentHistoryTrackingKey)
//        description.setOption(true as NSNumber, forKey: NSPersistentStoreRemoteChangeNotificationPostOptionKey)
//        description.cloudKitContainerOptions?.databaseScope = .public
//        
//        let publicStoreURL = description.url!.deletingLastPathComponent()
//            .appendPathComponent("")
//        let identifier = description.cloudKitContainerOptions!.containerIdentifier
//
//        let publicDescription = NSPersistentStoreDescription(url: publicStoreURL)
//        publicDescription.setOption(true as NSNumber, forKey: NSPersistentHistoryTrackingKey)
//        publicDescription.setOption(true as NSNumber, forKey: NSPersistentStoreRemoteChangeNotificationPostOptionKey)
//
//        var publicOptions = NSPersistentCloudKitContainerOptions(containerIdentifier: identifier)
//        publicDescription.databaseScope = .public
//
//        publicDescription.cloudKitContainerOptions = publicOptions
//        container.persistentStoreDescriptions.append(publicDescription)
//
//        container.loadPersistentStores(completionHandler: { (_, error) in
//            guard let error = error as NSError? else { return }
//            fatalError("###\(#function): Failed to retrieve a persistent store description,.")
//        })
//
//        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
//        container.viewContext.automaticallyMergesChangesFromParent = true
//    }
//}
