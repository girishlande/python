package Example {
    import Definitions::NXVerification;
    import Definitions::NXRequirement;
    import Definitions::NXWriteBackMeasurement;
    import Definitions::NXParameter;
    import VerificationCases::VerdictKind;
    import AutomaticFromNX::*;
    import SpatialItems::*;
    import ShapeItems::*;
    import SI::mm;
    import ScalarValues::String;
    import ScalarValues::Real;
    import MeasurementReferences::CoordinateFrame;
    import MeasurementReferences::TranslationRotationSequence;
    import MeasurementReferences::Translation;
    import MeasurementReferences::Rotation;
    
    
    verification exampleONE : NXVerification {
        
        objective VerifyRequirement {
            verify requirement : NXRequirement {
                attribute parameterONE : NXParameter {
                    attribute redefines Name = "Maneesh";
                    attribute redefines Revision = "A";
                    attribute redefines Usage = "Output";
                    attribute redefines Measurement = AutomaticFromNX::Measurement;
                    attribute :>> Goal = 10;
                    attribute :>> Max = 20;
                    attribute :>> Min = 5;
                    
                    part NXpart : BoundingShape {
                            item :>> shape : Box
                            {
                                 :>> length = 150[mm];
                                 :>> width = 100[mm];
                                 :>> height = 250[mm];
                            }
                            attribute :>> coordinateFrame {
                                 :>> transformation : TranslationRotationSequence {
                                 :>> elements = (Translation( (0, 1, 0)[source]), Rotation((0, 0, 1)[source], 20['°']), Translation( (5, 0, 0)[source]));
                                }
                            } 
                    }
					
					part NXpart : BoundingShape {
                            item :>> shape : Box
                            {
                                 :>> length = 150[mm];
                                 :>> width = 100[mm];
                                 :>> height = 250[mm];
                            }
                            attribute :>> coordinateFrame {
                                 :>> transformation : TranslationRotationSequence {
                                 :>> elements = (Translation( (0, 1, 0)[source]), Rotation((0, 0, 1)[source], 40['°']), Translation( (5, 0, 0)[source]));
                                }
                            } 
                    }
					
					part NXpart : BoundingShape {
                            item :>> shape : Box
                            {
                                 :>> length = 150[mm];
                                 :>> width = 100[mm];
                                 :>> height = 250[mm];
                            }
                            attribute :>> coordinateFrame {
                                 :>> transformation : TranslationRotationSequence {
                                 :>> elements = (Translation( (0, 1, 0)[source]), Rotation((0, 0, 1)[source], 60['°']), Translation( (5, 0, 0)[source]));
                                }
                            } 
                    }
					
					
                }
                require constraint { Measurement == parameterONE.Goal and Measurement <= parameterONE.Max and Measurement >= parameterONE.Min }
            } 
        }
    }
}