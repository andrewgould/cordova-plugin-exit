/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVExit.h"
#import <Cordova/CDV.h>

@implementation CDVExit

/* exit the app */
- (void)exitApp:(CDVInvokedUrlCommand*)command
{
    // id level = [command argumentAtIndex:0];
    // id message = [command argumentAtIndex:1];

	// By doing this we're technically in breach of the iOS developer rules,
	// however as we're distributing this through the enterprise distribution
	// method we're okay - Apple never needs to know.
    // exit(0);
	
	UIApplication *app = [UIApplication sharedApplication];
	[app performSelector:@selector(suspend)];
}

@end
