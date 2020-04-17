/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

/**
 * A view with rounded corners.
 */

public class RoundedView: UIView {

    var optionalBackgroundView : UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        optionalBackgroundView = UIView()
        optionalBackgroundView.backgroundColor = .clear
        addSubview(optionalBackgroundView)
        optionalBackgroundView.translatesAutoresizingMaskIntoConstraints = false

        optionalBackgroundView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        optionalBackgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        optionalBackgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        optionalBackgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setBackgroundView(view: UIView) {
        optionalBackgroundView = view
        
        optionalBackgroundView.layoutIfNeeded()
        self.layoutIfNeeded()
    }
    
    public override class var layerClass: AnyClass {
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
