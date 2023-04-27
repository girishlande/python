import sys
from textx import metamodel_from_file

class StateMachine(object):
    def __init__(self,model):
        self.model = model
        self.state = None
        if len(self.model.states)>0:
            self.state = self.model.states[0];
        print("Current state:",self.state)
    
    def processThisEvent(self,e):
        #make the transition to new state based on the current event
        for s in self.model.states:
            if s == self.state:
                print("Current state:",s);
                for t in s.transitions:
                    print(f"transition {t.event} => {t.to_state}")
                    if t.event == e:
                        print(f"Transitioning from {self.state} to {t.to_state}")
                        self.state = t.to_state
                        return;
                        
            
        
    def startmachine(self):
        print("statemachine started")
        while True:
            i=1;
            for event in self.model.events:
                print(f"{i} {event.name}");
                i = i+1;
            print("Select option:");
            ch = input()
            if ch=='q':
                return;
            else:
                chindex = int(ch);
                e = self.model.events[chindex-1];
                print("Selected event:",e);
                self.processThisEvent(e);
  
            
                
    
if __name__ == '__main__':
    print("Running in main")
    if len(sys.argv) != 2:
        print("Pass statemachine model")
    else:
        print(f"Statemachine model:{sys.argv[1]}");
        mm = metamodel_from_file("statemachine.tx")
        model = mm.model_from_file(sys.argv[1])
        machine = StateMachine(model)
        machine.startmachine();
        
    
