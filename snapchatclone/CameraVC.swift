//
//  ViewController.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/17/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import UIKit

class CameraVC: CameraViewController, CameraVCDelegate {

    @IBOutlet weak var previewView: PreviewView!
    
    @IBOutlet weak var midiaTypeSegControl: UISegmentedControl!
    
    @IBOutlet weak var changeCameraBtn: UIButton!
    
    @IBOutlet weak var resumeView: UIButton!
    
    @IBOutlet weak var cameraUnavailableBtn: UIButton!
    
    @IBOutlet weak var recordView: UIButton!
    
    override func viewDidLoad() {
        delegate = self
        super.viewDidLoad()
    }
    
    func previewViewInstance() -> PreviewView {
        return previewView
    }
    
    func shouldHiddenResumeButton(hidden: Bool) {
        resumeView.isHidden = hidden
    }
    
    func shouldHiddenCameraAvailableLabel(hidden: Bool) {
        cameraUnavailableBtn.isHidden = hidden
    }
    
    func shouldEnableCameraUI(enabled: Bool) {
        changeCameraBtn.isEnabled = enabled
    }
    
    func shouldEnableCaptureModeControlUI(enabled: Bool) {
        midiaTypeSegControl.isEnabled = enabled
    }
    
    func captureModeControlSelectedIndex() -> Int {
        return midiaTypeSegControl.selectedSegmentIndex
    }
    
    func configureResumeButtonVisibility(alpha: CGFloat) {
        resumeView.alpha = alpha
    }
    
    func configureCameraUnavailableLabelVisibility(alpha: CGFloat) {
        cameraUnavailableBtn.alpha = alpha
    }
    
    func isResumeButtonHidden() -> Bool {
        return resumeView.isHidden
    }
    
    func isCameraUnavailableLabelHidden() -> Bool {
        return cameraUnavailableBtn.isHidden
    }
    
    func recordingHasStarted() {
        recordView.backgroundColor = UIColor.red
    }
    
    func canStartRecording() {
        recordView.backgroundColor = UIColor.clear
    }
    
    @IBAction func focusAndExposeTap(_ gestureRecognizer: UITapGestureRecognizer) {
        let devicePoint = self.previewView.videoPreviewLayer.captureDevicePointOfInterest(for: gestureRecognizer.location(in: gestureRecognizer.view))
        focus(with: .autoFocus, exposureMode: .autoExpose, at: devicePoint, monitorSubjectAreaChange: true)
    }
    
    @IBAction func changeCameraPressed(_ sender: UIButton) {
        changeCamera()
    }
    
    @IBAction func midiaTypeChanged(_ sender: UISegmentedControl) {
        toggleCaptureMode()
    }
    
    @IBAction func recordMidiaPressed(_ sender: UIButton) {
        startMidiaCapture()
    }
}

