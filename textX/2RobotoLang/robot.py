from textx import metamodel_from_file

def move_command_processor(move_cmd):

  # If steps is not given, set it do default 1 value.
  if move_cmd.steps == 0:
    move_cmd.steps = 1
    
class Robot(object):
    
    def __init__(self):
        self.x = 0
        self.y = 0
        
    def __str__(self):
        return f"Robot position is: {self.x}, {self.y}"
        
    def interpret(self,model):
        for c in model.commands:
            if (c.__class__.__name__=="InitialCommand"):
                print(f"Setting initial position to {c.x}, {c.y}");
                self.x = c.x
                self.y = c.y
           
            else:
                print(f"Going {c.direction} for {c.steps}");
                move = {
                    "Up": (0, 1),
                    "Down": (0, -1),
                    "Left": (-1, 0),
                    "Right": (1, 0)
                    }[c.direction]
                self.x += c.steps * move[0]
                self.y += c.steps * move[1]
            print(self);


mm = metamodel_from_file("robot.tx")
mm.register_obj_processors({'MoveCommand': move_command_processor})
model = mm.model_from_file("p1.robot")

robot = Robot()
robot.interpret(model);
