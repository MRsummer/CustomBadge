# CustomBadge

CustomBadge is a custom badge view implementation for UITabBar in iOS. It is a tiny library, simple and easy to use. It is an class extension of UITabBar and few apis are provided.

# Usage 

1. Set the width of tab bar icon and the top of badge view, so it can calculate and position the badge properly
```Objective-c
[tabBar setTabIconWidth:29];
[tabBar setBadgeTop:9];
```

2. Set badge type and number 
```Objective-c
// type is an CustomBadgeType enum type, it has 3 values
// kCustomBadgeStyleRedDot  represents a slightly notify without number for user
// kCustomBadgeStyleNumber  represents a notify with a number for user, and the badge will adjust its width automatically and show '...' when  the number is larger than 99
// kCustomBadgeStyleNone    represents no badge view
[selftabBar setBadgeStyle:type value:number atIndex:index];
```

That's very easy to use , and here is the effects:
![demo](https://github.com/MRsummer/CustomBadge/blob/master/demo.gif)
