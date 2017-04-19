//
//  CameraVCDelegate.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/17/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import Foundation
import UIKit

protocol CameraVCDelegate {
    func previewViewInstance() -> PreviewView
    
    func shouldHiddenResumeButton(hidden: Bool)
    func shouldHiddenCameraAvailableLabel(hidden: Bool)
    func shouldEnableCameraUI(enabled: Bool)
    func shouldEnableCaptureModeControlUI(enabled: Bool)
    func captureModeControlSelectedIndex() -> Int
    
    func configureResumeButtonVisibility(alpha: CGFloat)
    func configureCameraUnavailableLabelVisibility(alpha: CGFloat)
    
    func isResumeButtonHidden() -> Bool
    func isCameraUnavailableLabelHidden() -> Bool
    
    func recordingHasStarted()
    func canStartRecording()
}
