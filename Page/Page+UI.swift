//Created  on 2019/5/29 by  LCD:https://github.com/liucaide .

/***** 模块文档 *****
 *
 */




import Foundation



//MARK:--- 手势同时识别 实现 多个 ScrollView 层叠联动 ----------



@IBDesignable
public class PageUICollectionView: UICollectionView {
}
extension PageUICollectionView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.cd.panBack(gestureRecognizer, otherGesture: otherGestureRecognizer)
    }
}

@IBDesignable
public class PageUIScrollView: UIScrollView {
}
extension PageUIScrollView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.cd.panBack(gestureRecognizer, otherGesture: otherGestureRecognizer)
    }
}





@IBDesignable
public class RecognizeSimultaneouslyScrollView: UIScrollView {}
extension RecognizeSimultaneouslyScrollView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}

@IBDesignable
public class RecognizeSimultaneouslyCollectionView: UICollectionView {}
extension RecognizeSimultaneouslyCollectionView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}


@IBDesignable
public class RecognizeSimultaneouslyTableView: UITableView {}
extension RecognizeSimultaneouslyTableView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}


@IBDesignable
public class IgnoreHeaderTouchTableView: UITableView {
    open lazy var ignoreHeaderFrame: CGRect = {
        return self.tableHeaderView?.frame ?? .zero
    }()
    
    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if self.tableHeaderView != nil
            && self.ignoreHeaderFrame.contains(point) {
            return false
        }
        return super.point(inside: point, with: event)
    }
}

@IBDesignable
public class IgnoreHeaderTouchRecognizeSimultaneouslTableView: IgnoreHeaderTouchTableView {
}
extension IgnoreHeaderTouchRecognizeSimultaneouslTableView: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
