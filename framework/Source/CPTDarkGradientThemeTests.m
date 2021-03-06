#import "CPTDarkGradientThemeTests.h"
#import "CPTDerivedXYGraph.h"
#import "_CPTDarkGradientTheme.h"

@implementation CPTDarkGradientThemeTests

-(void)testNewThemeShouldBeCPTXYGraph
{
    // Arrange
    _CPTDarkGradientTheme *theme = [[_CPTDarkGradientTheme alloc] init];

    // Act
    CPTGraph *graph = [theme newGraph];

    // Assert
    XCTAssertEqual([graph class], [CPTXYGraph class], @"graph should be of type CPTXYGraph");
}

-(void)testNewThemeSetGraphClassReturnedClassShouldBeOfCorrectType
{
    // Arrange
    _CPTDarkGradientTheme *theme = [[_CPTDarkGradientTheme alloc] init];

    [theme setGraphClass:[CPTDerivedXYGraph class]];

    // Act
    CPTGraph *graph = [theme newGraph];

    // Assert
    XCTAssertEqual([graph class], [CPTDerivedXYGraph class], @"graph should be of type CPTDerivedXYGraph");
}

@end
