<p>
  <img src="https://github.com/liucaide/Images/blob/master/CaamDau/caamdau.png" align=centre />
</p>

[![CI Status](https://img.shields.io/travis/CaamDau/Page.svg?style=flat)](https://travis-ci.org/CaamDau/Page)
[![Version](https://img.shields.io/cocoapods/v/CaamDauPage.svg?style=flat)](https://cocoapods.org/pods/CaamDauPage)
[![License](https://img.shields.io/cocoapods/l/CaamDauPage.svg?style=flat)](https://cocoapods.org/pods/CaamDauPage)
[![Platform](https://img.shields.io/cocoapods/p/CaamDauPage.svg?style=flat)](https://cocoapods.org/pods/CaamDauPage)
[![](https://img.shields.io/badge/Swift-4.0~5.0-orange.svg?style=flat)](https://cocoapods.org/pods/CaamDauPage)

# Page 标签导航分页控制

## Installation
```ruby
pod 'CaamDauPage'

pod 'CaamDau/Page'
```
<p>
  <img src="https://github.com/liucaide/Images/blob/master/CD/page1.gif" width="25%" />
  <img src="https://github.com/liucaide/Images/blob/master/CD/page2.gif" width="25%" />
  <img src="https://github.com/liucaide/Images/blob/master/CD/page3.png" width="25%" />
</p>

## Usage
#### PageControl 指示器

```ruby
lazy var pageControl: PageControl = {
    return PageControl<PageControlItem,PageControlBuoy>(itemConfig:PageControlItem.Model(), buoyConfig: PageControlBuoy.Model())
}()

pageControl.dataSource = (0..<3).map({ (i) -> PageControlItemDataSource in
    var d = PageControlItemDataSource()
    d.id = i.stringValue
    d.title = "Title-\(i)"
    return d
})
```
#### PageViewController 分页控制器

```ruby
lazy var pageVC: PageViewController = {
    return PageViewController()
}()

pageVC.dataSource = [RowVC<VC_PageA>(dataSource: "id", config: "config"),
                     RowVC<VC_PageB>(),
                     RowVC<VC_PageC>()]

pageVC.dataSource.append(RowVC<VC_PageA>()) 

pageVC.dataSource += [RowVC<VC_PageA>()]  

pageVC.selectIndex = 2
```

## Author

liucaide, 565726319@qq.com

## License

CaamDau is available under the MIT license. See the LICENSE file for more info.
