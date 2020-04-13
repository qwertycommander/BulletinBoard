/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

/**
 * A view with rounded corners.
 */

class RoundedView: UIView, ContinuousMaskLayer {

    override class var layerClass: AnyClass {
        return ContinuousMaskLayerView.self
    }

}

/**
 * A button with rounded corners.
 */

class RoundedButton: UIButton, ContinuousMaskLayer {

    override class var layerClass: AnyClass {
        return ContinuousMaskLayerButton.self
    }

}
