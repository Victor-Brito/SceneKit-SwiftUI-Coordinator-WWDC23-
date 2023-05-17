//
//  File.swift
//  
//
//  Created by Victor Brito on 28/03/23.
//

import Foundation
import SwiftUI

///Navigation Setup is the .swift file responsible for configuring all screen flow properties

/// This enum is in charge of creating the screen presentations that involve interactions, so every time the path is directed to one of these enums it will be connected with its respective view, for example ".lateralPlane connects the LateralPlane() view"
public enum Interactions: String, Identifiable {
    case gameView, lateralPlane, rudderPlane, elevatorPlane, finalView
    
    public var id: String {
        self.rawValue
    }
}

/// This enum is responsible for creating sheet-style views, through this enum I can connect the views that must be presented in this model and through the coordinator I display them
public enum Sheet: String, Identifiable {
    case wingInfo, lateralInfo, rudderInfo, elevatorInfo, aboutMe
    
    public var id: String {
        self.rawValue
    }
}

@available(iOS 16.0, *)
/// In the coordinator class, an observable object is assigned so that other views know the status of the current state of the navigation flow, navigationpath defines the path of each screen and Sheet selects which view should be presented in the sheet model
public class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    
    /// Here I insert views into my stack
    /// - Parameter interactions: The interactions parameter fetches the views within the "interactions" enum
    public func push(_ interactions: Interactions) {
        path.append(interactions)
    }
    
    /// Here i insert sheet views into my stack
    /// - Parameter sheet: The sheet parameter fetches the views, which must be presented in sheet style, these views are inside the "Sheet" enum
    public func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    /// This method dismisses each view in sheet style
    public func dismissSheet() {
        self.sheet = nil
    }
    
    /// This method unstacks all screens to the main view defined in the coordinatorView file, in this case the main view is the "FirstPlaneView()" linked by the gameView interactions enum
    public func popToRoot() {
        path = NavigationPath()
    }
    
    @ViewBuilder
    public func build(interaction: Interactions) -> some View {
        switch interaction {
        case .gameView:
            FirstPlaneView()
        case .lateralPlane:
            LateralPlane()
        case .rudderPlane:
            RudderPlane()
        case .elevatorPlane:
            ElevatorPlane()
        case .finalView:
            FinalView()
        }
    }
    
    @ViewBuilder
    public func build(sheet: Sheet) -> some View {
        switch sheet {
        case .wingInfo:
            WingInfoView()
        case .lateralInfo:
            LateralInfoView()
        case .rudderInfo:
            RudderInfoView()
        case .elevatorInfo:
            ElevatorInfoView()
        case .aboutMe:
            AboutMeView()
        }
    }
}
