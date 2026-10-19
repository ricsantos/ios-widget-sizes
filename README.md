# iOS Widget Sizes

Widget sizes for iPhone, iPad, Apple Vision Pro and Apple Watch.

The official source is Apple's Human Interface Guidelines: https://developer.apple.com/design/human-interface-guidelines/widgets#Specifications

- [Apple HIG specifications (October 2026)](#apple-hig-specifications-october-2026)
- [iPhone Duo](#iphone-duo)
- [Measured sizes (iOS 15 / iPadOS 15, 2021)](#measured-sizes-ios-15--ipados-15-2021)

<hr/>

## Apple HIG specifications (October 2026)

Values copied from the HIG [Specifications](https://developer.apple.com/design/human-interface-guidelines/widgets#Specifications) section (change log entry: October 13, 2026). The "Devices" column is not part of the HIG; it maps each screen size to the iPhones and iPads that use it.

### iOS

|Screen size (portrait, pt)|Devices|Small (pt)|Medium (pt)|Large (pt)|Circular (pt)|Rectangular (pt)|Inline (pt)|
|-|-|-|-|-|-|-|-|
|430x932|iPhone 14 Pro Max, 15 Plus, 15 Pro Max, 16 Plus|170x170|364x170|364x382|76x76|172x76|257x26|
|428x926|iPhone 12 Pro Max, 13 Pro Max, 14 Plus|170x170|364x170|364x382|76x76|172x76|257x26|
|414x896|iPhone XR, XS Max, 11, 11 Pro Max|169x169|360x169|360x379|76x76|160x72|248x26|
|414x736|iPhone 6s Plus, 7 Plus, 8 Plus|159x159|348x157|348x357|76x76|170x76|248x26|
|393x852|iPhone 14 Pro, 15, 15 Pro, 16|158x158|338x158|338x354|72x72|160x72|234x26|
|390x844|iPhone 12, 12 Pro, 13, 13 Pro, 14, 16e|158x158|338x158|338x354|72x72|160x72|234x26|
|375x812|iPhone X, XS, 11 Pro|155x155|329x155|329x345|72x72|157x72|225x26|
|375x667|iPhone 6s, 7, 8, SE (2nd and 3rd generation)|148x148|321x148|321x324|68x68|153x68|225x26|
|360x780|iPhone 12 mini, 13 mini|155x155|329x155|329x345|72x72|157x72|225x26|
|320x568|iPhone SE (1st generation), iPod touch (7th generation)|141x141|292x141|292x311|N/A|N/A|N/A|

The HIG does not list newer screen sizes yet, for example iPhone 16 Pro (402x874), iPhone 16 Pro Max (440x956) or [iPhone Duo](#iphone-duo).

### iPadOS

In iPadOS, the system renders a widget at the larger "Canvas" size and then scales it down to the "Device" size on the Home Screen.

|Screen size (portrait, pt)|Devices|Target|Small (pt)|Medium (pt)|Large (pt)|Extra large (pt)|
|-|-|-|-|-|-|-|
|768x1024|iPad (5th and 6th generation), iPad mini 4, iPad mini (5th generation), iPad Air 2, iPad Pro 9.7-inch|Canvas|141x141|305.5x141|305.5x305.5|634.5x305.5|
|||Device|120x120|260x120|260x260|540x260|
|744x1133|iPad mini (6th generation and later)|Canvas|141x141|305.5x141|305.5x305.5|634.5x305.5|
|||Device|120x120|260x120|260x260|540x260|
|810x1080|iPad (7th, 8th and 9th generation)|Canvas|146x146|320.5x146|320.5x320.5|669x320.5|
|||Device|124x124|272x124|272x272|568x272|
|820x1180|iPad (10th generation), iPad Air (4th and 5th generation)|Canvas|155x155|342x155|342x342|715.5x342|
|||Device|136x136|300x136|300x300|628x300|
|834x1112|iPad Pro 10.5-inch, iPad Air (3rd generation)|Canvas|150x150|327.5x150|327.5x327.5|682x327.5|
|||Device|132x132|288x132|288x288|600x288|
|834x1194|iPad Pro 11-inch (1st to 4th generation)|Canvas|155x155|342x155|342x342|715.5x342|
|||Device|136x136|300x136|300x300|628x300|
|954x1373 \*||Canvas|162x162|350x162|350x350|726x350|
|||Device|162x162|350x162|350x350|726x350|
|970x1389 \*||Canvas|162x162|350x162|350x350|726x350|
|||Device|162x162|350x162|350x350|726x350|
|1024x1366|iPad Pro 12.9-inch (all generations)|Canvas|170x170|378.5x170|378.5x378.5|795x378.5|
|||Device|160x160|356x160|356x356|748x356|
|1192x1590 \*||Canvas|188x188|412x188|412x412|860x412|
|||Device|188x188|412x188|412x412|860x412|

\* When Display Zoom is set to More Space.

### visionOS

|Widget|Size in pt|Size in mm (scaled to 100%)|
|-|-|-|
|Small|158x158|268x268|
|Medium|338x158|574x268|
|Large|338x354|574x600|
|Extra large|450x338|763x574|
|Extra large portrait|338x450|574x763|

### watchOS

|Apple Watch size|Size of a widget in the Smart Stack (pt)|
|-|-|
|40mm|152x69.5|
|41mm|165x72.5|
|42mm|176x72.5|
|44mm|173x76.5|
|45mm|184x80.5|
|46mm|194x80.5|
|49mm (Ultra 3, 4)|198x81.5|
|49mm (Ultra 1, 2)|191x81.5|

## iPhone Duo

The HIG does not list widget sizes for iPhone Duo yet. The sizes below were measured in the iPhone Duo simulator (Xcode 27.1, iOS 27.1, October 2026) with `TimelineProviderContext.displaySize`. Pull requests with sizes measured on a real device are welcome.

|Display|Screen size (pt)|Small (pt)|Medium (pt)|Large (pt)|Extra large portrait (pt)|Circular (pt)|Rectangular (pt)|Inline (pt)|
|-|-|-|-|-|-|-|-|-|
|Outer display|466 x 678|158 x 158|334 x 158|334 x 354|?|59.67 x 59.67|143 x 59.67|310 x 36|
|Inner display (open)|669 x 951 (951 x 669 landscape)|158 x 158|334 x 158|334 x 354|334 x 550|?|?|?|

- The screen sizes come from the iPhone Duo simulator profile: 1398 x 2034 px (outer) and 2007 x 2853 px (inner), both @3x. The inner panel is 1878 x 2670 px, so the system renders the inner display at 3x and scales it down. Some sources divide the panel pixels by 3 and get 626 x 890 pt. That value is not correct.
- `systemExtraLargePortrait` is new in iOS 27. It is a 4 x 6 grid widget for the iPhone Home Screen.
- The inner display was measured in landscape, the default pose of the simulator when open.
- `?` means not measured yet.

To measure, read `context.displaySize` in your `TimelineProvider`. A `GeometryReader` in the widget view gives smaller values in the widget gallery, because the gallery scales its previews down.

```swift
struct Provider: TimelineProvider {
    func getSnapshot(in context: Context, completion: @escaping (Entry) -> Void) {
        print("\(context.family): \(context.displaySize)")
        completion(Entry(date: .now))
    }
    // ...
}
```

## Measured sizes (iOS 15 / iPadOS 15, 2021)

The sizes of widgets for select iPhones and iPads. The sizes were measured using the GeometryReader in SwiftUI.

### iOS 15

|Device|Resolution|Small|Medium|Large|
|-|-|-|-|-|
|iPhone 13|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 13 mini|1080 x 2340|155 x 155|329 x 155|329 x 345|
|iPhone 13 Pro|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 13 Pro Max|1284 x 2778|170 x 170|364 x 170|364 x 382|
|iPhone 12|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 12 mini|1080 x 2340|155 x 155|329 x 155|329 x 345|
|iPhone 12 Pro|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 12 Pro Max|1284 x 2778|170 x 170|364 x 170|364 x 382|
|iPhone 11|828 x 1792|169 x 169|360 x 169|360 x 379|
|iPhone 11 Pro|1125 x 2436|155 x 155|329 x 155|329 x 345|
|iPhone 11 Pro Max|1242 x 2688|169 x 169|360 x 169|360 x 379|
|iPhone Xs|1125 x 2436|155 x 155|329 x 155|329 x 345|
|iPhone Xs Max|1242 x 2688|169 x 169|360 x 169|360 x 379|
|iPhone Xr|828 x 1792|169 x 169|360 x 169|360 x 379|
|iPhone X|1125 x 2436|155 x 155|329 x 155|329 x 345|
|iPhone 8|750 x 1334|148 x 148|321 x 148|321 x 324|
|iPhone 8 Plus|1080 x 1920|157 x 157|348 x 157|348 x 351|
|iPhone 7|750 x 1334|148 x 148|321 x 148|321 x 324|
|iPhone 7 Plus|1080 x 1920|157 x 157|348 x 157|348 x 351|
|iPhone 6s|750 x 1334|148 x 148|321 x 148|321 x 324|
|iPhone 6s Plus|1080 x 1920|157 x 157|348 x 157|348 x 351|
|iPhone SE (1st generation)|640 x 1136|141 x 141|292 x 141|292 x 311|
|iPhone SE (2nd generation)|750 x 1334|148 x 148|321 x 148|321 x 324|
|iPod touch (7th generation)|640 x 1136|141 x 141|292 x 141|292 x 311|

### iOS 14.5

This table only contain sizes for very few devices because widgets generally don't seem to have changed sizes between iOS 14.5 and iOS 15 on the iPhones.

|Device|Resolution|Small|Medium|Large|
|-|-|-|-|-|
|iPhone 12|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 12 mini|1080 x 2340|155 x 155|329 x 155|329 x 345|
|iPhone 12 Pro|1170 x 2532|158 x 158|338 x 158|338 x 354|
|iPhone 12 Pro Max|1284 x 2778|170 x 170|364 x 170|364 x 382|
|iPhone 11|828 x 1792||||
|iPhone 11 Pro|1125 x 2436||||
|iPhone 11 Pro Max|1242 x 2688||||
|iPhone Xs|1125 x 2436||||
|iPhone Xs Max|1242 x 2688||||
|iPhone Xr|828 x 1792||||
|iPhone X|1125 x 2436||||
|iPhone 8|750 x 1334||||
|iPhone 8 Plus|1080 x 1920||||
|iPhone 7|750 x 1334||||
|iPhone 7 Plus|1080 x 1920||||
|iPhone 6s|750 x 1334||||
|iPhone 6s Plus|1080 x 1920||||
|iPhone SE (1st generation)|640 x 1136||||
|iPhone SE (2nd generation)|1334 x 750||||
|iPod touch (7th generation)|640 x 1136||||
|iPod touch (7th generation)|||||

### iPadOS 15

|Device|Resolution|Small|Medium|Large|Extra Large|
|-|-|-|-|-|-|
|iPad Pro 12.9-inch (5th generation)|2732 x 2048|170 x 170|379 x 170|379 x 379|795 x 379|
|iPad Pro 11-inch (3rd generation)|2388 x 1668|155 x 155|342 x 155|342 x 342|716 x 342|
|iPad Pro 12.9-inch (4th generation)|2732 x 2048|170 x 170|379 x 170|379 x 379|795 x 379|
|iPad Pro 11-inch (2nd generation)|2388 x 1668|155 x 155|342 x 155|342 x 342|716 x 342|
|iPad Pro 12.9-inch (3rd generation)|2732 x 2048|170 x 170|379 x 170|379 x 379|795 x 379|
|iPad Pro 11-inch (1st generation)|2388 x 1668|155 x 155|342 x 155|342 x 342|716 x 342|
|iPad Pro 12.9-inch (2nd generation)|2732 × 2048|170 x 170|379 x 170|379 x 379|795 x 379|
|iPad Pro 12.9-inch (1st generation)|2732 × 2048|170 x 170|379 x 170|379 x 379|795 x 379|
|iPad Pro 10.5-inch|2224 x 1668|150 x 150|328 x 150|328 x 328|682 x 328|
|iPad Pro 9.7-inch|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad (9th generation)|2160 x 1620|146 x 146|321 x 146|321 x 321|669 x 321|
|iPad (8th generation)|2160 x 1620|146 x 146|321 x 146|321 x 321|669 x 321|
|iPad (7th generation)|2160 x 1620|146 x 146|321 x 146|321 x 321|669 x 321|
|iPad (6th generation)|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad (5th generation)|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad mini (6th generation)|2266 x 1488|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad mini (5th generation)|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad mini 4|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|
|iPad Air (4th generation)|2360 x 1640|155 x 155|342 x 155|342 x 342|716 x 342|
|iPad Air (3rd generation)|2048 x 1536|150 x 150|328 x 150|328 x 328|682 x 328|
|iPad Air 2|2048 x 1536|141 x 141|306 x 141|306 x 306|635 x 306|

### iPadOS 14.5

|Device|Resolution|Small|Medium|Large|
|-|-|-|-|-|
|iPad Pro 12.9-inch (5th generation)|2732 x 2048|170 x 170|364 x 170|364 x 382|
|iPad Pro 11-inch (3rd generation)|2388 x 1668|155 x 155|329 x 155|329 x 345|
|iPad Pro 12.9-inch (4th generation)|2732 x 2048|170 x 170|364 x 170|364 x 382|
|iPad Pro 11-inch (2nd generation)|2388 x 1668|155 x 155|329 x 155|329 x 345|
|iPad Pro 12.9-inch (3rd generation)|2732 x 2048|170 x 170|364 x 170|364 x 382|
|iPad Pro 11-inch (1st generation)|2388 x 1668|155 x 155|329 x 155|329 x 345|
|iPad Pro 12.9-inch (2nd generation)|2732 × 2048|170 x 170|364 x 170|364 x 382|
|iPad Pro 12.9-inch (1st generation)|2732 × 2048|170 x 170|364 x 170|364 x 382|
|iPad Pro 10.5-inch|2224 x 1668|155 x 155|329 x 155|329 x 345|
|iPad Pro 9.7-inch|2048 x 1536|155 x 155|329 x 155|329 x 345|
|iPad (8th generation)|2160 x 1620|155 x 155|329 x 155|329 x 345|
|iPad (7th generation)|2160 x 1620|155 x 155|329 x 155|329 x 345|
|iPad (6th generation)|2048 x 1536|155 x 155|329 x 155|329 x 345|
|iPad (5th generation)|2048 x 1536|155 x 155|329 x 155|329 x 345|
|iPad mini (5th generation)|2048 x 1536|158 x 158|338 x 158|338 x 354|
|iPad mini 4|2048 x 1536|158 x 158|338 x 158|338 x 354|
|iPad Air (4th generation)|2360 x 1640|155 x 155|329 x 155|329 x 345|
|iPad Air (3rd generation)|2048 x 1536|155 x 155|329 x 155|329 x 345|
|iPad Air 2|2048 x 1536|155 x 155|329 x 155|329 x 345|
