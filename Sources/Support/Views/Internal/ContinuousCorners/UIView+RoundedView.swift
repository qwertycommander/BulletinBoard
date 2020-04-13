/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

/**
 * A view with rounded corners.
 */

class RoundedView: UIView {

    override class var layerClass: AnyClass {
        return ContinuousMaskLayerView.self
    }

    var cornerRadius: CGFloat {
        get {
            return roundedLayer.continuousCornerRadius
        }
        set {
            roundedLayer.continuousCornerRadius = newValue
        }
    }

    /// The corners to round.
    var roundedCorners: UIRectCorner {
        get {
            return roundedLayer.roundedCorners
        }
        set {
            roundedLayer.roundedCorners = newValue
        }
    }


    private var roundedLayer: ContinuousMaskLayerView {
        return layer as! ContinuousMaskLayerView
    }

}

/**
 * A button with rounded corners.
 */

class RoundedButton: UIButton {

    override class var layerClass: AnyClass {
        return ContinuousMaskLayerButton.self
    }

    var cornerRadius: CGFloat {
        get {
            return roundedLayer.continuousCornerRadius
        }
        set {
            roundedLayer.continuousCornerRadius = newValue
        }
    }

    /// The corners to round.
    var roundedCorners: UIRectCorner {
        get {
            return roundedLayer.roundedCorners
        }
        set {
            roundedLayer.roundedCorners = newValue
        }
    }


    private var roundedLayer: ContinuousMaskLayerButton {
        return layer as! ContinuousMaskLayerButton
    }
}
