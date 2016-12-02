
#import "TKStateMachine.h"
#import "TKState.h"

@interface TKStateMachine ()

@property (nonatomic, strong) NSMutableDictionary* states;

@end

@implementation TKStateMachine

- (instancetype)init
{
    if (!(self = [super init])) return self;
    
    _states = @{}.mutableCopy;
   
    return self;
}

- (id)stateForKey:(Class)state{
    return _states[[state description]];
}

- (void)addState:(Class)state{
    if (!_states[[state description]]) {
        _states[[state description]] = [state new];
    }
}

- (void)addTransitionsFromState:(Class)state toStates:(NSArray *)destinations{
    
        [self addState:state];
        
        for (Class destinationState in destinations) {
            [self addState:destinationState];
        }

        TKState* sourceState = _states[[state description]];
        
        for (Class state in destinations) {
            [sourceState.destinationStates addObject:state];
        }
}

- (void)setState:(Class)state{
    
        if ([self isValidDestinationState:state]) {
            TKState* currentState = _states[[_state description]];
            if (currentState) {
                [currentState willMakeTransitionTo:state];
                Class temp = _state;
                _state = state;
                [_states[[_state description]] didMakeTransitionFrom:temp];
            }else{
                _state = state;
                [_states[[_state description]] didMakeTransitionFrom:nil];
            }
        }
}

- (BOOL)isValidDestinationState:(Class)state{
    TKState* currentState = _states[[_state description]];
    return currentState ? ([currentState.destinationStates containsObject:state] && _states[[state description]]) : YES;
}

@end
