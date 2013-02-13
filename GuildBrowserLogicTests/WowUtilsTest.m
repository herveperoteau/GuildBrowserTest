//
//  WowUtilsTest.m
//  GuildBrowser
//
//  Created by Hervé PEROTEAU on 13/02/13.
//  Copyright (c) 2013 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTest.h"
#import "WoWUtils.h"

@implementation WowUtilsTest

// 1
-(void) testCharacterClassNameLookup {
    
    // 2
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassType shoud be Warrior");
    
    // 3
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    
    // 4
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    
    /// etc ...
    
    
    
}

-(void) testRaceTypeLookup {
    
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils qualityFromQualityType:1]], nil);
    
    /// etc ...
    
                   
}


-(void) testQualityLookup {
    
    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], nil);
    
    /// etc ...
    
}






@end





