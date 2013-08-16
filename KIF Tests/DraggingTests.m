//
//  DragginTests.m
//  KIF
//
//  Created by Seivan Heidari on 8/16/13.
//
//

#import <KIF/KIF.h>

@interface DraggingTests : KIFTestCase
@end

@implementation DraggingTests

- (void)beforeEach
{
  [tester tapViewWithAccessibilityLabel:@"Dragging"];
}

- (void)afterEach
{
  [tester tapViewWithAccessibilityLabel:@"Test Suite" traits:UIAccessibilityTraitButton];
}


- (void)testDragViewWithAccessibilityLabel
{
  
  [tester tapViewWithAccessibilityLabel:@"More"];
  [tester tapViewWithAccessibilityLabel:@"Edit"];
  [tester dragViewWithAccesibilityLabel:@"5" toViewWithAccesibilityLabel:@"0"];
  [tester tapViewWithAccessibilityLabel:@"Done"];
  [tester tapViewWithAccessibilityLabel:@"5" traits:UIAccessibilityTraitButton];
  
  
  
}

@end
