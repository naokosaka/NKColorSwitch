NKColorSwitch
========

Flat style UISwitch control for iOS. <br />
Supports customizable control tint color, sizes, and shapes. <br />

<img src="https://raw.github.com/naokosaka/NKColorSwitch/master/Screen.png"/>

Requires iOS 5+ and ARC.

Installation
-----

Add NKColorSwitch folder to your project and import "NKColorSwitch.h".


Usage
-----

1) Create NKColorSwitch and add to view programmatically or using nib

	// Create NKColorSwitch and specify desired rect
	NKColorSwitch *nkColorSwitch = [[NKColorSwitch alloc] initWithFrame:CGRectMake(20, 54, 60, 30)];

	// Specify target to receive value change
	[nkColorSwitch addTarget:self action:@selector(switchPressed:) forControlEvents:UIControlEventValueChanged];

	[self.view addSubview:nkColorSwitch];

2) Change control appearance
    
	// Set ON background color
	[nkColorSwitch setOnTintColor:[UIColor greenColor]];

	// Set OFF background color
	[nkColorSwitch setTintColor:[UIColor redColor]];

	// Set Thumb color
	[nkColorSwitch setThumbTintColor:[UIColor whiteColor]];
	
	// Set ON background border color
	[nkColorSwitch setOnTintBorderColor:[UIColor lightGrayColor]];
	
	// Set OFF background border color
	[nkColorSwitch setTintBorderColor:[UIColor lightGrayColor]];

3) Change shape
	
	// Change shape to oval
	[nkColorSwitch setShape:kNKColorSwitchShapeOval];
	
	// Change shape to rectangle
	[nkColorSwitch setShape:kNKColorSwitchShapeRectangle];

	// Change shape to rectangle no round corner
	[nkColorSwitch setShape:kNKColorSwitchShapeRectangleNoCorner];

	

Contact
-----
nao.kosaka@gmail.com

License
-----

Copyright (C) 2013 Naohiko Kosaka

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
