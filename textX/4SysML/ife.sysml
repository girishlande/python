package CapellaModel { 
    import ARCADIA::*; 
    package  'In-Flight Entertainment System' { 
        package  'Operational Analysis' { 
            package  'Interfaces'; 
            package  'Operational Capabilities'; 
            package  'Operational Entities' { 
                part 'Ground Operator' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Crew' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                    part 'Cabin Crew' : Entity  { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = true; 
                        attribute :>> 'isHuman' = true; 
                    }  
                    part 'Pilot' : Entity  { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = true; 
                        attribute :>> 'isHuman' = true; 
                    }  
                }  
                part 'Aircraft' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                }  
                part 'Airline Company' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                }  
                part 'Personal Device' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                }  
                part 'Passenger' : Entity  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                }  
            } 
            package  'Data' { 
                attribute :>> 'visibility' = UNSET; 
                item 'ChangeEvent 1' : ChangeEvent {
                    attribute :>> 'kind' = WHEN;
                }   
                package  'Classes' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
            } 
        } 
        package  'System Analysis' { 
            package  'Interfaces'; 
            package  'Capabilities'; 
            package  'Missions'; 
            package  'System Functions' { 
                action 'Root System Function' : SystemFunction  { 
                    attribute :>> 'isIsStatic' = false; 
                    attribute :>> 'isUnique' = false; 
                    attribute :>> 'isMinInclusive' = false; 
                    attribute :>> 'isIsReadOnly' = false; 
                    attribute :>> 'isOrdered' = false; 
                    attribute :>> 'isIsAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'isIsDerived' = false; 
                    attribute :>> 'aggregationKind' = UNSET; 
                    attribute :>> 'kind' = FUNCTION; 
                    attribute :>> 'isIsPartOfKey' = false; 
                    attribute :>> 'visibility' = UNSET; 
                    attribute :>> 'summary' = ''; 
                    attribute :>> 'isMaxInclusive' = false; 
                    action 'Perform Cabin Management Activities' : SystemFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Play Airline-Imposed Videos' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Launch Pre-Flight Tests' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                    }  
                    action 'Entertain with IFE System' : SystemFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Watch Video on Private Screen' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Watch Video on Cabin Screen' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Select Passenger Service' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Command VOD Service' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 6' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Listen to Audio Announcement' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Provide Aircraft Information, Commands and Means' : SystemFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Provide Satellite Communication Means' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Navigation Data' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Electrical Power' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Provide Exterior-View Videos' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Send Audio Announcement' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Play Sound in Cabin' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Send Decompression Notification' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Perform Maintenance, Configuration and Test Operations' : SystemFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Update Media Content' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Configure the System' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Launch and Analyze Tests' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Set Passenger Service Authorization' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'IFE System' : SystemFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Provide Access to Digital Media' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Store Digital Media' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 5' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 6' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Load Digital Media ' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Digital Media' : FunctionalExchange 
                                connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FOP 1'
                                to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Manage Passenger Services Lifecycle' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Determine Service Availability' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Handle Service Activation Requests' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 4' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Service Availability' : FunctionalExchange 
                                connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Service Availability'.'FOP 1'
                                to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Handle Service Activation Requests'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Run Services' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Run Video-On-Demand Service' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Handle VOD Movie Controls' : SystemFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'summary' = ''; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Retrieve VOD Movie Data' : SystemFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 6' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 7' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                            }  
                            action 'Run Cabin Intercommunication Service' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Handle Imposed Videos Controls' : SystemFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Manage Imposed Video Selections' : SystemFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                            }  
                            action 'Run Gaming Service' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            action 'Run Any Other Service' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            action 'Run Airline Channel Service' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        action 'Manage Video and Audio Diffusion' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Broadcast Audio Video Streams' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 4' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 5' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 5' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 6' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Manage Passenger Service Interruptions' : SystemFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'VOD Movie Status' : FunctionalExchange 
                                connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Manage Passenger Service Interruptions'.'FOP 3'
                                to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'VOD Movie' : FunctionalExchange 
                                connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 6'
                                to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Manage Passenger Service Interruptions'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Determine Operating Profiles' : SystemFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    interface 'Available VOD Movies List' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 3'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 3' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed VOD Movies List' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 3'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FIP 1' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Available Languages' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 4'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 2' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Movie Cover' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 6'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 4' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Available Languages' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FIP 2' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Movie Description' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FIP 3' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Available Airline Video List' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Manage Imposed Video Selections'.'FIP1' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Imposed Videos List' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Manage Imposed Video Selections'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FIP1' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Played Audio Video' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Watch Video on Private Screen'.'FIP1' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger VOD Service Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Select Passenger Service'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Handle Service Activation Requests'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Pause Command' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FOP2'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Handle Imposed Videos Controls'.'FIP3' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Play Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Movie Controls'.'FIP 1' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Video Media' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Play Sound in Cabin'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Watch Video on Cabin Screen'.'FIP3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Stream' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 3'
                        to target ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Play Sound in Cabin'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Movie Description' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 5'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Pause Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FOP 5'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Movie Controls'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Stop Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FOP 6'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Movie Controls'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Stop Command' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Handle Imposed Videos Controls'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Play Command' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Handle Imposed Videos Controls'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Video' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Watch Video on Cabin Screen'.'FIP2' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Playing Status' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 4'
                        to target ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FIP2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Control Command' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Handle Imposed Videos Controls'.'FOP 3'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Control Command' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Movie Controls'.'FOP 2'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger VOD Service Activation' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Handle Service Activation Requests'.'FOP 4'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 7' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger Service Authorization Profile' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Maintenance, Configuration and Test Operations'.'Set Passenger Service Authorization'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Service Availability'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Available Passenger Services List' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Handle Service Activation Requests'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Select Passenger Service'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Language Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 6' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Command VOD Service'.'FOP 3'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 5' { 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Selection' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Cabin Management Activities'.'Play Airline-Imposed Videos'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Manage Imposed Video Selections'.'FIP3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Digital Media' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Perform Maintenance, Configuration and Test Operations'.'Update Media Content'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Decompression Notification' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Send Decompression Notification'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Determine Operating Profiles'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Power Consomption Cap' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Provide Electrical Power'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Determine Operating Profiles'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'IFE Operating Profile' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Determine Operating Profiles'.'FOP 1'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Service Availability'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Stream' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Send Audio Announcement'.'FOP 5'
                        to target ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'Provide Aircraft Information, Commands and Means'.'Play Sound in Cabin'.'FOP1'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'System Functions'::'Root System Function'.'IFE System'.'Manage Video and Audio Diffusion'.'Broadcast Audio Video Streams'.'FOP 5'
                        to target ::> 'System Functions'::'Root System Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                }  
            } 
            package  'Data' { 
                attribute :>> 'visibility' = UNSET; 
                item 'Imposed Video Ended' : ChangeEvent {
                    attribute :>> 'kind' = WHEN;
                }   
                package  'Common' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'BusinessEntity' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
            } 
            package  'Structure' { 
                part 'IFE System' : SystemComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isDataComponent' = false; 
                    attribute :>> 'isHuman' = false; 
                }  
                part 'Passenger' : SystemComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'summary' = ''; 
                    attribute :>> 'isDataComponent' = false; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Cabin Crew' : SystemComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isDataComponent' = false; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Aircraft' : SystemComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isDataComponent' = false; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Ground Operator' : SystemComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isDataComponent' = false; 
                    attribute :>> 'isHuman' = true; 
                }  
            } 
        } 
        package  'Logical Architecture' { 
            package  'Interfaces' { 
                item 'Audio-Video Stream' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'stream' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Media ID' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'movie' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Audio-Video Broadcast Data' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'seat' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                    item 'file' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Passenger Selection' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'selection' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'VOD Control Command' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'command' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                    item 'seat' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Media Files' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'file' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Imposed Video Control Command' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'command' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
            } 
            package  'Capabilities'; 
            package  'Structure' { 
                part 'IFE System' : LogicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                    part 'Aircraft Front Servers' : LogicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'isHuman' = false; 
                        part 'Aircraft Interface' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            part 'Aircraft-Specific Aircraft Interface' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            part 'Core Aircraft Interface' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            port 'CP 3' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 4' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Media Server' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            port 'CP 1' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 2' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Streaming Server' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            port 'CP 1' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 2' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 3' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 4' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Applications Server' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            port 'CP 1' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 2' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 3' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                    }  
                    part 'Seat TV' : LogicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isHuman' = false; 
                        part 'Seat TV Interactions Manager' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            part 'Seat TV Core Interactions Manager' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            part 'Seat TV Airline-Specific Interactions Manager' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            port 'CP 3' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 4' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 5' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Seat TV Audio Video Player' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            port 'CP 1' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 2' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Seat TV Services Manager' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            port 'CP 1' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 2' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = IN; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                    }  
                    part 'Cabin Screen' : LogicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'isHuman' = false; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'orientation' = IN; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                    }  
                    part 'Cabin Terminal' : LogicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'summary' = ''; 
                        attribute :>> 'isHuman' = false; 
                        part 'Cabin Terminal Interactions Manager' : LogicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isHuman' = false; 
                            part 'Cabin Terminal Airline-Specific Interactions Manager' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            part 'Cabin Terminal Core Interactions Manager' : LogicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                            }  
                            port 'CP 3' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 4' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = INOUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'CP 5' : ComponentPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'kind' = FLOW; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'orientation' = OUT; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                    }  
                    interface 'Media Data' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Media Server'.'CP 1'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Interactions Manager'.'CP 3' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Streaming Protocol' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Streaming Server'.'CP 1'
                        to  target ::> 'Structure'::'IFE System'.'Cabin Screen'.'CP 1' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Service Management' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Applications Server'.'CP 1'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Services Manager'.'CP 1' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Streaming Protocol' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Streaming Server'.'CP 2'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Audio Video Player'.'CP 1' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Media Data' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Cabin Terminal'.'Cabin Terminal Interactions Manager'.'CP 3'
                        to  target ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Media Server'.'CP 2' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Command and Status' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Cabin Terminal'.'Cabin Terminal Interactions Manager'.'CP 4'
                        to  target ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Streaming Server'.'CP 3' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Service Management' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Cabin Terminal'.'Cabin Terminal Interactions Manager'.'CP 5'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Services Manager'.'CP 2' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Service Management' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Applications Server'.'CP 2'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Interactions Manager'.'CP 4' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Commands' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Streaming Server'.'CP 4'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Interactions Manager'.'CP 5' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                    interface 'Streaming Protocol' : ComponentExchange 
                        connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Applications Server'.'CP 3'
                        to  target ::> 'Structure'::'IFE System'.'Seat TV'.'Seat TV Audio Video Player'.'CP 2' { 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isOriented' = false; 
                    }  
                }  
                part 'Passenger' : LogicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'summary' = ''; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Cabin Crew' : LogicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                }  
                part 'Aircraft' : LogicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                    port 'CP 1' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = INOUT; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = OUT; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                }  
                part 'Ground Operator' : LogicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                }  
                interface 'Audio-Video Streams' : ComponentExchange 
                    connect source ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Aircraft Interface'.'CP 3'
                    to  target ::> 'Structure'::'Aircraft'.'CP 1' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
                interface 'Aircraft Messages' : ComponentExchange 
                    connect source ::> 'Structure'::'Aircraft'.'CP 2'
                    to  target ::> 'Structure'::'IFE System'.'Aircraft Front Servers'.'Aircraft Interface'.'CP 4' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
            } 
            package  'Logical Functions' { 
                action 'Root Logical Function' : LogicalFunction  { 
                    attribute :>> 'isIsStatic' = false; 
                    attribute :>> 'isUnique' = false; 
                    attribute :>> 'isMinInclusive' = false; 
                    attribute :>> 'isIsReadOnly' = false; 
                    attribute :>> 'isOrdered' = false; 
                    attribute :>> 'isIsAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'isIsDerived' = false; 
                    attribute :>> 'aggregationKind' = UNSET; 
                    attribute :>> 'kind' = FUNCTION; 
                    attribute :>> 'isIsPartOfKey' = false; 
                    attribute :>> 'visibility' = UNSET; 
                    attribute :>> 'isMaxInclusive' = false; 
                    action 'Perform Cabin Management Activities' : LogicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Command Airline-Imposed Video Broadcast' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 4' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Launch Pre-Flight Tests and Analyze Results' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                    }  
                    action 'Entertain with IFE System' : LogicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Watch Movie on Private Screen' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Watch Imposed Movie on Cabin Screen' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Select Passenger Service' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Command VOD Session' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 4' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Listen to Audio Announcement' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Provide Aircraft Information, Commands and Means' : LogicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Provide Satellite Communication Means' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Navigation Data' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Electrical Power' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Provide Exterior-View Videos' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Send Audio Announcements' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Play Audio on Cabin Aircraft Speakers' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Send Decompression Notification' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Perform Maintenance, Configuration and Test Operations' : LogicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Update Media Content' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Configure the System' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Launch Tests and Analyze Results' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Set Passenger Service Authorization' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'IFE System' : LogicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Provide Aircraft Interface' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Capture Aircraft Notifications and Parameters' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Determine Operating Profiles' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Acquire Audio Stream from Aircraft' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Forward Audio Stream to Aircraft Cabin Speakers' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Decompression Notification' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Determine Operating Profiles'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Power Consumption Profile' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Determine Operating Profiles'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Audio Stream' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Acquire Audio Stream from Aircraft'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Announcement'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Provide Access to Digital Media' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Load Digital Media ' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Store Digital Media' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 4' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 5' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Digital Media' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Manage Audio and Video Diffusion' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Process Audio Video Requests' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Process VOD Movie Controls' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Process Imposed Video Controls' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'VOD Movie Control Command' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FOP 2'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Imposed Video Control  Command' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FOP 3'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Broadcast Stored Audio and Video' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Broadcast Audio Video Stream' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Prepare Broadcasts' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Broadcast Data' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 1'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Broadcast Audio Video Stream'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Display Video and Play Audio' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Play Audio-Video Stream on Seat TV' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Play Video Stream on Cabin Screen' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Receive Imposed Video Playing Status' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Imposed Video Playing Status on Cabin Terminal' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Audio Interruption Screen on Seat TV' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Imposed Video Status' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FOP 1'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Display Imposed Video Playing Status on Cabin Terminal'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Process Audio Announcement' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Audio-Video Stream' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Broadcast Audio Video Stream'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Audio-Video Stream on Seat TV'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Video Stream' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Broadcast Audio Video Stream'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Audio-Video Stream on Seat TV'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Imposed Video Playing Status' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 4'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Audio Stream' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Announcement'.'FOP 3'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Audio-Video Stream on Seat TV'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Run Services' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Run Video-On-Demand Service' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Display VOD Movie Data' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Capture VOD Selections' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 6' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 7' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Retrieve VOD Movie Data' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 6' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 7' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 8' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Handle VOD Service Activation and Interruption' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Store Interrupted VOD Movie Status' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'VOD Movie Data Request' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 3'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie Description Request' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 4'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie List Request' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 5'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available VOD Movies List' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 1'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 4' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Movie Description' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 2'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Movie Cover' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 3'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available Languages List' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 4'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie List Request' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 2'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 8' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie Interruption Command' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 3'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Store Interrupted VOD Movie Status'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Run Cabin Intercommunication Service' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Capture Imposed Video Selections' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Retrieve Imposed Video Data' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Imposed Video Data' : LogicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Imposed Video Selection Command' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 2'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available Imposed Video List' : FunctionalExchange 
                                    connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FOP2'
                                    to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FIP1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                        }  
                        action 'Manage Passenger Services Lifecycle' : LogicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Display Homepage on Seat TV' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Capture Passenger Service Selection' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Determine  Passenger Service Availability' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Interrupt Current Service' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Store Passenger Service State' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Start/Resume Service' : LogicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 4' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Passenger Homepage Display Command' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'VOD Service Activation Command' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Start/Resume Service'.'FIP1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Available Passenger Service Request' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine  Passenger Service Availability'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Available Passenger Services List' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine  Passenger Service Availability'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Available Passenger Services List' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine  Passenger Service Availability'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Start/Resume Service'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Service Status Request' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Start/Resume Service'.'FOP 1'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Store Passenger Service State'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Service Stored State' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Store Passenger Service State'.'FOP 3'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Start/Resume Service'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Service Deactivation Command' : FunctionalExchange 
                                connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP 2'
                                to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Store Passenger Service State'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FOP 4'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FIP 3' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FOP1'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 2' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Passenger VOD Service Activation' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Start/Resume Service'.'FOP 4'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'VOD Movie Status' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Store Interrupted VOD Movie Status'.'FOP 3'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 3' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'IFE Operating Profile' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Determine Operating Profiles'.'FOP 1'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine  Passenger Service Availability'.'FIP 2' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Announcement'.'FOP 4'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FIP 2' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Audio Interruption Notification' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FOP 2'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Display Audio Interruption Screen on Seat TV'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Audio Stream' : FunctionalExchange 
                            connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Broadcast Audio Video Stream'.'FOP 3'
                            to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Forward Audio Stream to Aircraft Cabin Speakers'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                    }  
                    interface 'Displayed Imposed Video Description' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FOP2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Played Audio Video' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Audio-Video Stream on Seat TV'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Watch Movie on Private Screen'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Service Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Play Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 6'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Files' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Movies List' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 4'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Watch Imposed Movie on Cabin Screen'.'FIP3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger Service Authorization Profile' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Maintenance, Configuration and Test Operations'.'Set Passenger Service Authorization'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine  Passenger Service Availability'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Passenger Services List' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Available Languages' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Movie Description' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Stop Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 7'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media IDs' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Broadcast Stored Audio and Video'.'Prepare Broadcasts'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Content Request' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Data' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 4'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Content Request' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 5'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movies List' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Data' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Imposed Videos List' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Language Selection Command' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 6' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Selection Command' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 7' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Digital Media' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Maintenance, Configuration and Test Operations'.'Update Media Content'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Played Video' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Watch Imposed Movie on Cabin Screen'.'FIP2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Stream' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Send Audio Announcements'.'FOP 5'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Acquire Audio Stream from Aircraft'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FOP1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Stop Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Play Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Pause Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Language Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 4'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 5'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Resume Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Imposed Video Playing Status' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Display Imposed Video Playing Status on Cabin Terminal'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Audio Interruption Screen' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Display Audio Interruption Screen on Seat TV'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Power Consumption Cap' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Provide Electrical Power'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Decompression Notificaton' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Send Decompression Notification'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Stream' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Aircraft Interface'.'Forward Audio Stream to Aircraft Cabin Speakers'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Play Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 1'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Pause Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Stop Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video List' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 5'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 4'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Play Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Pause Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 4'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Stop Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 5'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Audio and Video Diffusion'.'Display Video and Play Audio'.'Play Audio-Video Stream on Seat TV'.'FOP 3'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger Homepage Selection' : FunctionalExchange 
                        connect source ::> 'Logical Functions'::'Root Logical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FOP 2'
                        to target ::> 'Logical Functions'::'Root Logical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                }  
            } 
            package  'Data' { 
                attribute :>> 'visibility' = UNSET; 
                item 'Imposed Movie Ended' : ChangeEvent {
                    attribute :>> 'kind' = WHEN;
                }   
                package  'Common' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Media' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Commands' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Business Entities' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
            } 
        } 
        package  'Physical Architecture' { 
            package  'Interfaces' { 
                package  'Interfaces (from Logical Architecture)'; 
                item 'Audio-Video Packets' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = FLOW; 
                    item 'packets' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Audio Packets' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = FLOW; 
                    item 'packets' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Video Packets' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = FLOW; 
                    item 'packets' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Media File' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'file' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Audio-Video Stream Header' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'video' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                    item 'audio' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Media ID' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'movie' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Media Broadcast Data' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'seat' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                    item 'file' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Passenger Selection' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'selection' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'VOD Control Command' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = UNSET; 
                    item 'command' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                    item 'seat' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
                item 'Video Frames' : ExchangeItem  { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'exchangeMechanism' = FLOW; 
                    item 'frame' : ExchangeItemElement  { 
                        attribute :>> 'kind' = TYPE; 
                        attribute :>> 'isMaxInclusive' = false; 
                        attribute :>> 'isComposite' = true; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isUnique' = true; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'direction' = UNSET; 
                    }  
                }  
            } 
            package  'Capabilities'; 
            package  'Physical Functions' { 
                action 'Root Physical Function' : PhysicalFunction  { 
                    attribute :>> 'isIsStatic' = false; 
                    attribute :>> 'isUnique' = false; 
                    attribute :>> 'isMinInclusive' = false; 
                    attribute :>> 'isIsReadOnly' = false; 
                    attribute :>> 'isOrdered' = false; 
                    attribute :>> 'isIsAbstract' = false; 
                    attribute :>> 'isFinal' = false; 
                    attribute :>> 'isIsDerived' = false; 
                    attribute :>> 'aggregationKind' = UNSET; 
                    attribute :>> 'kind' = FUNCTION; 
                    attribute :>> 'isIsPartOfKey' = false; 
                    attribute :>> 'visibility' = UNSET; 
                    attribute :>> 'isMaxInclusive' = false; 
                    action 'Perform Cabin Management Activities' : PhysicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Command Airline-Imposed Video Broadcast' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 4' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Launch Pre-Flight Tests and Analyze Results' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                    }  
                    action 'Entertain with IFE System' : PhysicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Watch Movie on Private Screen' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Watch Imposed Movie on Cabin Screen' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Select Passenger Service' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Command VOD Session' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 3' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 4' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Listen to Audio Announcement' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Provide Aircraft Information, Commands and Means' : PhysicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Provide Satellite Communication Means' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Navigation Data' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Provide Electrical Power' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Provide Exterior-View Videos' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Send Audio Announcements' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 5' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Play Audio on Cabin Aircraft Speakers' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Send Decompression Notification' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'Perform Maintenance, Configuration and Test Operations' : PhysicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Update Media Content' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Configure the System' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Launch Tests and Analyze Results' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                        }  
                        action 'Set Passenger Service Authorization' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                    }  
                    action 'IFE System' : PhysicalFunction  { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'kind' = FUNCTION; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'isMaxInclusive' = false; 
                        action 'Manage Aircraft Interface' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Capture Aircraft Notifications and Parameters' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Acquire Audio Stream from Aircraft' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                        }  
                        action 'Provide Access to Digital Media' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Load Digital Media ' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Store Digital Media' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 4' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 4' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 5' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Digital Media' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Determine Operating Profiles' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> 'isIsControl' = false; 
                                attribute :>> 'kindOfNode' = Unspecified; 
                                attribute :>> 'isIsControlType' = false; 
                                attribute :>> 'ordering' = FIFO; 
                            }  
                        }  
                        action 'Distribute data' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Setup Network' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Define Initial Network Configuration' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Orchestrate Network Tests' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Reconfigure Network' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Network Configuration' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Define Initial Network Configuration'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'REC Unit Network Adapter'.'Implement Network Configuration'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Network Configuration' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Reconfigure Network'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'REC Unit Network Adapter'.'Implement Network Configuration'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Network Test Sequences' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Orchestrate Network Tests'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'REC Unit Network Adapter'.'Run Network Tests'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Implement Network Configuration - CMU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Run Network Tests - CMU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Run Network Tests - PVDU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Implement Network Configuration - PVDU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Implement Network Configuration - VSU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Run Network Tests - VSU' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Network Configuration' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Reconfigure Network'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Implement Network Configuration - PVDU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Network Configuration' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Reconfigure Network'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Implement Network Configuration - CMU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Network Configuration' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Define Initial Network Configuration'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Implement Network Configuration - CMU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Network Configuration' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Define Initial Network Configuration'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Implement Network Configuration - PVDU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Network Test Sequences' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Orchestrate Network Tests'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Run Network Tests - CMU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Network Test Sequences' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Setup Network'.'Orchestrate Network Tests'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Distribute data'.'Run Network Tests - PVDU'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Manage Audio Video Diffusion' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Process Audio Video Requests' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Process VOD Movie Controls' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Process Imposed Video Controls' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'VOD Movie Control Command' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Imposed Video Control Command' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FOP 3'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Broadcast Stored Audio and Video Streams' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Prepare Broadcasts' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Initiate Audio-Video Stream' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Send Audio Video Packet' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Broadcast Data' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Initiate Audio-Video Stream'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Audio Video Packets' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Initiate Audio-Video Stream'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Send Audio Video Packet'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Display Video and Play Audio' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Play Video Stream on Seat TV' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    action 'Receive and Bufferize Video Packets' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        in port 'FIP 2' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    action 'Decode Video Packets' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        in port 'FIP 2' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    interface 'Video Packets' : FunctionalExchange 
                                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Receive and Bufferize Video Packets'.'FOP 1'
                                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Decode Video Packets'.'FIP 1' { 
                                        attribute :>> 'isIsMulticast' = false; 
                                        attribute :>> 'kindOfRate' = Unspecified; 
                                        attribute :>> 'isIsMultireceive' = false; 
                                    }  
                                }  
                                action 'Play Video Stream on Cabin Screen' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    action 'Receive and Bufferize Video Packet' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    action 'Decode Video Packet' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        in port 'FIP 3' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    interface 'Video Data Packet' : FunctionalExchange 
                                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'Receive and Bufferize Video Packet'.'FOP 1'
                                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'Decode Video Packet'.'FIP 1' { 
                                        attribute :>> 'isIsMulticast' = false; 
                                        attribute :>> 'kindOfRate' = Unspecified; 
                                        attribute :>> 'isIsMultireceive' = false; 
                                    }  
                                }  
                                action 'Receive Imposed Video Playing Status' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Imposed Video Playing Status on Cabin Terminal' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Audio Interruption Screen on Seat TV' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Play Audio on Seat TV' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    action 'Receive and Bufferize Audio Packets' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        in port 'FIP 2' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    action 'Decode Audio Packets' : PhysicalFunction  { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'kind' = FUNCTION; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                        in port 'FIP 1' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        in port 'FIP 2' : FunctionInputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                        out port 'FOP 1' : FunctionOutputPort  { 
                                            attribute :>> 'isIsControl' = false; 
                                            attribute :>> 'kindOfNode' = Unspecified; 
                                            attribute :>> 'isIsControlType' = false; 
                                            attribute :>> 'ordering' = FIFO; 
                                        }  
                                    }  
                                    interface 'Audio Packets' : FunctionalExchange 
                                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Receive and Bufferize Audio Packets'.'FOP 1'
                                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Decode Audio Packets'.'FIP 1' { 
                                        attribute :>> 'isIsMulticast' = false; 
                                        attribute :>> 'kindOfRate' = Unspecified; 
                                        attribute :>> 'isIsMultireceive' = false; 
                                    }  
                                }  
                                action 'Display Video on Seat TV' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Video on Cabin Screen' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Split Audio Video Streams' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Convert Audio' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Send Audio Stream to Aircraft Cabin Speakers' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Synchronize Audio Video' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Imposed Video Status' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Imposed Video Playing Status on Cabin Terminal'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Played Video' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'Decode Video Packet'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Video on Cabin Screen'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Packetized Video Packets' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Split Audio Video Streams'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Receive and Bufferize Video Packets'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Packetized Audio Stream' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Split Audio Video Streams'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Receive and Bufferize Audio Packets'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Decoded Audio Stream' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Decode Audio Packets'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Convert Audio'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Video Frames' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Decode Video Packets'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Video on Seat TV'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Sync Metadata' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Synchronize Audio Video'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Decode Audio Packets'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Sync Metadata' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Synchronize Audio Video'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Decode Video Packets'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Process Audio Announcement' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Packetized Video Stream' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Send Audio Video Packet'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'Receive and Bufferize Video Packet'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Seat TV'.'Receive and Bufferize Video Packets'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Video Stream on Cabin Screen'.'Decode Video Packet'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Pause-Stop Notification' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Imposed Video Playing Status' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 4'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Receive Imposed Video Playing Status'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Packetized Audio Stream' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Announcement'.'FOP 3'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Play Audio on Seat TV'.'Receive and Bufferize Audio Packets'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Packetized Audio Video Stream' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Send Audio Video Packet'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Split Audio Video Streams'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Packetized Audio Stream' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Send Audio Video Packet'.'FOP 3'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Send Audio Stream to Aircraft Cabin Speakers'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Stream Header' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Initiate Audio-Video Stream'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Synchronize Audio Video'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        action 'Run Services' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Run Video-On-Demand Service' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Display VOD Movie Data' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Capture VOD Selections' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 6' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 7' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Retrieve VOD Movie Data' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 5' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 6' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 7' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 8' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Handle VOD Service Activation and Interruption' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Store interrupted VOD Movie Status' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'VOD Movie Data Request' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 3'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie Description Request' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 4'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie List Request' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 5'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available VOD Movies List' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 4' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Movie Description' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Movie Picture' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 3'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 3' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available Languages List' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 4'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie Interruption Command' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Store interrupted VOD Movie Status'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'VOD Movie List Request' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 3'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 8' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Run Cabin Intercommunication Service' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Capture Imposed Video Selections' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 5' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Retrieve Imposed Video Data' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 3' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Display Imposed Video Data' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP2' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Imposed Video Selection Command' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Available Imposed Video List' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FOP2'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FIP1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                        }  
                        action 'Manage Passenger Services Lifecycle' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Display Homepage on Seat TV' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Capture Passenger Service Selection' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Launch Service' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                action 'Store Passenger Service State' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP 1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 3' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                action 'Start/Resume Service' : PhysicalFunction  { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'kind' = FUNCTION; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                    in port 'FIP1' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 2' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    in port 'FIP 4' : FunctionInputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 1' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                    out port 'FOP 4' : FunctionOutputPort  { 
                                        attribute :>> 'isIsControl' = false; 
                                        attribute :>> 'kindOfNode' = Unspecified; 
                                        attribute :>> 'isIsControlType' = false; 
                                        attribute :>> 'ordering' = FIFO; 
                                    }  
                                }  
                                interface 'Service Stored State' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Store Passenger Service State'.'FOP 3'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Start/Resume Service'.'FIP 2' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                                interface 'Service Status Request' : FunctionalExchange 
                                    connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Start/Resume Service'.'FOP 1'
                                    to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Store Passenger Service State'.'FIP 1' { 
                                    attribute :>> 'isIsMulticast' = false; 
                                    attribute :>> 'kindOfRate' = Unspecified; 
                                    attribute :>> 'isIsMultireceive' = false; 
                                }  
                            }  
                            action 'Determine Passenger Service Availability' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Interrupt Current Service' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP1' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            interface 'Passenger Homepage Display Command' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FIP 1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'VOD Service Activation Command' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Start/Resume Service'.'FIP1' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Available Passenger Service Request' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Passenger Service Availability'.'FIP 3' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Passenger Available Services List' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Passenger Service Availability'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Passenger Available Services List' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Passenger Service Availability'.'FOP 1'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Start/Resume Service'.'FIP 4' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                            interface 'Service Deasctivation Command' : FunctionalExchange 
                                connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FOP 2'
                                to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Store Passenger Service State'.'FIP 2' { 
                                attribute :>> 'isIsMulticast' = false; 
                                attribute :>> 'kindOfRate' = Unspecified; 
                                attribute :>> 'isIsMultireceive' = false; 
                            }  
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FOP1'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 3' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FOP 4'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FIP 3' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'VOD Movie Status' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Store interrupted VOD Movie Status'.'FOP 3'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Service Interruption Command' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Announcement'.'FOP 2'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FIP 2' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Audio Stream' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Acquire Audio Stream from Aircraft'.'FOP 1'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Announcement'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                        interface 'Audio Interruption Notification' : FunctionalExchange 
                            connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Interrupt Current Service'.'FOP 2'
                            to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Audio Interruption Screen on Seat TV'.'FIP 1' { 
                            attribute :>> 'isIsMulticast' = false; 
                            attribute :>> 'kindOfRate' = Unspecified; 
                            attribute :>> 'isIsMultireceive' = false; 
                        }  
                    }  
                    package  'REC DEFINITION' { 
                        action 'REC Unit Network Adapter' : PhysicalFunction  { 
                            attribute :>> 'isIsStatic' = false; 
                            attribute :>> 'isUnique' = false; 
                            attribute :>> 'isMinInclusive' = false; 
                            attribute :>> 'isIsReadOnly' = false; 
                            attribute :>> 'isOrdered' = false; 
                            attribute :>> 'isIsAbstract' = false; 
                            attribute :>> 'isFinal' = false; 
                            attribute :>> 'isIsDerived' = false; 
                            attribute :>> 'aggregationKind' = UNSET; 
                            attribute :>> 'kind' = FUNCTION; 
                            attribute :>> 'isIsPartOfKey' = false; 
                            attribute :>> 'visibility' = UNSET; 
                            attribute :>> 'isMaxInclusive' = false; 
                            action 'Implement Network Configuration' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                            action 'Run Network Tests' : PhysicalFunction  { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'kind' = FUNCTION; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> 'isIsControl' = false; 
                                    attribute :>> 'kindOfNode' = Unspecified; 
                                    attribute :>> 'isIsControlType' = false; 
                                    attribute :>> 'ordering' = FIFO; 
                                }  
                            }  
                        }  
                    } 
                    interface 'Displayed Imposed Video Description' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FOP2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Audio Video' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Video on Seat TV'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Watch Movie on Private Screen'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger Homepage Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Service Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FOP1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Capture Passenger Service Selection'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Play Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 6'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Files' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Movies List' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 3'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FOP1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Watch Imposed Movie on Cabin Screen'.'FIP3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger Service Authorization Profile' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Maintenance, Configuration and Test Operations'.'Set Passenger Service Authorization'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Passenger Service Availability'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Passenger Services List' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Display Homepage on Seat TV'.'FOP1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Select Passenger Service'.'FIP1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Available Languages' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Movie Description' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Display VOD Movie Data'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Stop Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 7'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Request' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Broadcast Stored Audio and Video Streams'.'Prepare Broadcasts'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Content Request' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Data' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 4'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Media Content Request' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movies List' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Data' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 3'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Passenger VOD Service Activation' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Launch Service'.'Start/Resume Service'.'FOP 4'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Imposed Videos List' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Display Imposed Video Data'.'FOP1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Language Selection Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 6' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Selection Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Retrieve VOD Movie Data'.'FIP 7' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Digital Media' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Maintenance, Configuration and Test Operations'.'Update Media Content'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Load Digital Media '.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'IFE Operating Profile' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Determine Operating Profiles'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Passenger Services Lifecycle'.'Determine Passenger Service Availability'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Decompression Notification' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Determine Operating Profiles'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Electrical Power Profile' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Determine Operating Profiles'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Video' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Video on Seat TV'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Watch Imposed Movie on Cabin Screen'.'FIP2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Announcement' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Send Audio Announcements'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Acquire Audio Stream from Aircraft'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FOP1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Stop Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Play Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Pause Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 3'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Language Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 4'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Command VOD Session'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Capture VOD Selections'.'FIP 5' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'VOD Movie Resume Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Video-On-Demand Service'.'Handle VOD Service Activation and Interruption'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process VOD Movie Controls'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Imposed Video Playing Status' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Imposed Video Playing Status on Cabin Terminal'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Audio Interruption Screen' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Audio Interruption Screen on Seat TV'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Electrical Power Profile' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Provide Electrical Power'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Decompression Notificaton' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Send Decompression Notification'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Aircraft Interface'.'Capture Aircraft Notifications and Parameters'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Play Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Pause Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 2'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Stop Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 3'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video List' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Provide Access to Digital Media'.'Store Digital Media'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Retrieve Imposed Video Data'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Selection' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'Perform Cabin Management Activities'.'Command Airline-Imposed Video Broadcast'.'FOP 4'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Play Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 3'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Pause Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 4'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Imposed Video Stop Command' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Run Services'.'Run Cabin Intercommunication Service'.'Capture Imposed Video Selections'.'FOP 5'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Process Audio Video Requests'.'Process Imposed Video Controls'.'FIP 4' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Signal' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Convert Audio'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Listen to Audio Announcement'.'FIP 3' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Displayed Video' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Display Video on Cabin Screen'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Entertain with IFE System'.'Watch Imposed Movie on Cabin Screen'.'FIP 2' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                    interface 'Audio Stream' : FunctionalExchange 
                        connect source ::> 'Physical Functions'::'Root Physical Function'.'IFE System'.'Manage Audio Video Diffusion'.'Display Video and Play Audio'.'Send Audio Stream to Aircraft Cabin Speakers'.'FOP 1'
                        to target ::> 'Physical Functions'::'Root Physical Function'.'Provide Aircraft Information, Commands and Means'.'Play Audio on Cabin Aircraft Speakers'.'FIP 1' { 
                        attribute :>> 'isIsMulticast' = false; 
                        attribute :>> 'kindOfRate' = Unspecified; 
                        attribute :>> 'isIsMultireceive' = false; 
                    }  
                }  
            } 
            package  'Structure' { 
                attribute :>> 'visibility' = UNSET; 
                part 'IFE System' : PhysicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = false; 
                    attribute :>> 'isHuman' = false; 
                    attribute :>> 'nature' = UNSET; 
                    attribute :>> 'kind' = UNSET; 
                    interface 'Gigabit Ethernet' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'PP 2'
                        to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Ethernet Switches'.'PP 4';  
                    part 'IMPLEMENTATION PCs' : PhysicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'isHuman' = false; 
                        attribute :>> 'nature' = NODE; 
                        attribute :>> 'kind' = UNSET; 
                        interface 'Gigabit Ethernet' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Ethernet Switches'.'PP2'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PP 1' { 
                            attribute :>> 'summary' = ''; 
                        }  
                        interface 'USB' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PP 2'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Passenger Remote Control'.'PP1' { 
                            attribute :>> 'summary' = ''; 
                        }  
                        interface 'USB' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Media Loading Unit'.'PP1'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'PP2' { 
                            attribute :>> 'summary' = ''; 
                        }  
                        interface 'Ethernet' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Management Unit'.'PP 4'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Ethernet Switches'.'PP 5';  
                        interface 'HDMI Cable' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'PP 3'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Screen Video Splitter'.'PP 1';  
                        interface 'HDMI Cable' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Screen Video Splitter'.'PP 2'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Video Display Unit'.'PP 1';  
                        interface 'Gigabit Ethernet' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'PP 4'
                            to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Ethernet Switches'.'PP 7';  
                        part 'Video Server Unit' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'summary' = ''; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            interface 'SATA' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'VSU Processor'.'PP2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'VSU Hard Disk'.'PP1' { 
                                attribute :>> 'summary' = ''; 
                            }  
                            interface 'Ethernet Connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'VSU Processor'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Video Server Unit'.'PP 4';  
                            part 'VSU Hard Disk' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'VSU Processor' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            port 'PP2' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 4' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Ethernet Switches' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            port 'PP2' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 4' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 5' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 7' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Private Video Display Unit' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            interface 'HDMI' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Screen'.'PP2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Processor'.'PP3' { 
                                attribute :>> 'summary' = ''; 
                            }  
                            interface 'Ethernet Connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PP 1'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Processor'.'PP 4';  
                            interface 'BUS connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Processor'.'PP 5'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'BUS'.'PP 1';  
                            interface 'BUS connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Audio Processing Unit'.'PP 1'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'BUS'.'PP 2';  
                            interface 'BUS connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU MPEG Decoder'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'BUS'.'PP 3';  
                            interface 'BUS connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'Digital Analog Converter'.'PP 1'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'BUS'.'PP 4';  
                            interface 'USB' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Private Video Display Unit'.'PVDU Processor'.'PP 6';  
                            part 'PVDU Processor' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'summary' = ''; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP3' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 5' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 4' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 6' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'PVDU MPEG Decoder' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'PVDU Screen' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'PVDU Audio Processing Unit' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'BUS' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 3' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 4' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'Digital Analog Converter' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'Jack' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            port 'PP 1' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Passenger Remote Control' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            port 'PP1' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Cabin Management Unit' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            interface 'Internal BUS' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Management Unit'.'CMU Processor'.'PP 1'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Management Unit'.'CMU Touch Screen'.'PP 1';  
                            interface 'Ethernet Connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Management Unit'.'CMU Processor'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Cabin Management Unit'.'PP 4';  
                            part 'CMU Processor' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'CMU Touch Screen' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            port 'PP 4' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Media Loading Unit' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            port 'PP1' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Application Server HW / SW' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            interface 'Ethernet Connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'ASU Processor'.'PP 1';  
                            interface 'HDMI Connector' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'ASU Processor'.'PP 2'
                                to targetPhysicalPort ::> 'Structure'::'IFE System'.'IMPLEMENTATION PCs'.'Application Server HW / SW'.'PP 3';  
                            part 'ASU Processor' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = NODE; 
                                attribute :>> 'kind' = UNSET; 
                                port 'PP 1' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            port 'PP 2' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Cabin Screen Video Splitter' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            port 'PP 1' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                        part 'Cabin Video Display Unit' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = NODE; 
                            attribute :>> 'kind' = UNSET; 
                            port 'PP 1' : PhysicalPort { 
                                attribute :>> 'isIsStatic' = false; 
                                attribute :>> 'isUnique' = false; 
                                attribute :>> 'isMinInclusive' = false; 
                                attribute :>> 'isIsReadOnly' = false; 
                                attribute :>> 'isOrdered' = false; 
                                attribute :>> 'isIsAbstract' = false; 
                                attribute :>> 'isFinal' = false; 
                                attribute :>> 'isIsDerived' = false; 
                                attribute :>> 'aggregationKind' = UNSET; 
                                attribute :>> 'isIsPartOfKey' = false; 
                                attribute :>> 'visibility' = UNSET; 
                                attribute :>> 'isMaxInclusive' = false; 
                            }  
                        }  
                    }  
                    part 'BEHAVIOURAL PCs' : PhysicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'isHuman' = false; 
                        attribute :>> 'nature' = UNSET; 
                        attribute :>> 'kind' = SOFTWARE; 
                        interface 'Media Data Requests' : ComponentExchange 
                            connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Central Management Unit SW'.'CMU Interactions Manager'.'CMU Core Interactions Manager'.'CP 4'
                            to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Aircraft Front Servers'.'VSU SW'.'Media Server'.'CP 1' { 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isOriented' = false; 
                        }  
                        interface 'Media Content' : ComponentExchange 
                            connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Aircraft Front Servers'.'VSU SW'.'Media Server'.'CP 2'
                            to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Central Management Unit SW'.'CMU Interactions Manager'.'CMU Core Interactions Manager'.'CP 5' { 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isOriented' = false; 
                        }  
                        interface 'Media Data Requests' : ComponentExchange 
                            connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Interactions Manager'.'PVDU Core Interactions Manager'.'CP 4'
                            to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Aircraft Front Servers'.'VSU SW'.'Media Server'.'CP 3' { 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isOriented' = false; 
                        }  
                        interface 'Media Content' : ComponentExchange 
                            connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Aircraft Front Servers'.'VSU SW'.'Media Server'.'CP 4'
                            to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Interactions Manager'.'PVDU Core Interactions Manager'.'CP 5' { 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isOriented' = false; 
                        }  
                        interface 'Streaming Protocol' : ComponentExchange 
                            connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Aircraft Front Servers'.'VSU SW'.'Streaming Server'.'CP 1'
                            to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Video Player'.'PTV Video Player '.'CP 1' { 
                            attribute :>> 'kind' = FLOW; 
                            attribute :>> 'isOriented' = false; 
                        }  
                        part 'Aircraft Front Servers' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = UNSET; 
                            part 'Aircraft Interface SW' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                part 'Aircraft-Specific Aircraft Interface' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                                part 'Core Aircraft Interface' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                            }  
                            part 'VSU SW' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                part 'Media Server' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 3' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 4' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FIP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FOP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'Streaming Server' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FOP 5' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FIP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FIP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'Unit Network Adapter - VSU' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                            }  
                            part 'ASU SW' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                part 'Aircraft-Specific Network Manager' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                                part 'Applications Server' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                            }  
                        }  
                        part 'PVDU SW' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = UNSET; 
                            part 'PVDU Interactions Manager' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                part 'PVDU Core Interactions Manager' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 5' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 4' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'FOP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'PVDU Airline-Specific Interactions Manager' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    part 'Remote Control SW' : PhysicalComponent { 
                                        attribute :>> 'isAbstract' = false; 
                                        attribute :>> 'isActor' = false; 
                                        attribute :>> 'isHuman' = false; 
                                        attribute :>> 'nature' = BEHAVIOR; 
                                        attribute :>> 'kind' = SOFTWARE; 
                                    }  
                                    part 'PVDU Screen SW' : PhysicalComponent { 
                                        attribute :>> 'isAbstract' = false; 
                                        attribute :>> 'isActor' = false; 
                                        attribute :>> 'isHuman' = false; 
                                        attribute :>> 'nature' = BEHAVIOR; 
                                        attribute :>> 'kind' = FIRMWARE; 
                                    }  
                                    port 'CP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                            }  
                            part 'PVDU Video Player' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                interface 'Packet Transmission' : ComponentExchange 
                                    connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Video Player'.'PTV Video Player '.'CP 2'
                                    to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Video Player'.'PVDU Video Decoder'.'CP 1' { 
                                    attribute :>> 'kind' = FLOW; 
                                    attribute :>> 'isOriented' = false; 
                                }  
                                part 'PTV Video Player ' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'PVDU Video Decoder' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'PVDU Audio Decoder' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                }  
                            }  
                            part 'PVDU Services Manager' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = SOFTWARE; 
                            }  
                            part 'DAC SW' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = FIRMWARE; 
                            }  
                            part 'Unit Network Adapter - PVDU' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = SOFTWARE; 
                            }  
                        }  
                        part 'Cabin Video Unit SW' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = UNSET; 
                            part 'Cabin Screen SW' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = FIRMWARE; 
                                port 'CP 1' : ComponentPort { 
                                    attribute :>> 'isIsStatic' = false; 
                                    attribute :>> 'isUnique' = false; 
                                    attribute :>> 'isMinInclusive' = false; 
                                    attribute :>> 'isIsReadOnly' = false; 
                                    attribute :>> 'isOrdered' = false; 
                                    attribute :>> 'isIsAbstract' = false; 
                                    attribute :>> 'isFinal' = false; 
                                    attribute :>> 'kind' = FLOW; 
                                    attribute :>> 'isIsDerived' = false; 
                                    attribute :>> 'aggregationKind' = UNSET; 
                                    attribute :>> 'isIsPartOfKey' = false; 
                                    attribute :>> 'visibility' = UNSET; 
                                    attribute :>> 'orientation' = OUT; 
                                    attribute :>> 'isMaxInclusive' = false; 
                                }  
                            }  
                            part 'Cabin Video Player' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = SOFTWARE; 
                            }  
                        }  
                        part 'Central Management Unit SW' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = UNSET; 
                            part 'CMU Interactions Manager' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                                part 'CMU Airline-Specific Interactions Manager' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 2' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 1' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                                part 'CMU Core Interactions Manager' : PhysicalComponent { 
                                    attribute :>> 'isAbstract' = false; 
                                    attribute :>> 'isActor' = false; 
                                    attribute :>> 'isHuman' = false; 
                                    attribute :>> 'nature' = BEHAVIOR; 
                                    attribute :>> 'kind' = SOFTWARE; 
                                    port 'CP 5' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = IN; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                    port 'CP 4' : ComponentPort { 
                                        attribute :>> 'isIsStatic' = false; 
                                        attribute :>> 'isUnique' = false; 
                                        attribute :>> 'isMinInclusive' = false; 
                                        attribute :>> 'isIsReadOnly' = false; 
                                        attribute :>> 'isOrdered' = false; 
                                        attribute :>> 'isIsAbstract' = false; 
                                        attribute :>> 'isFinal' = false; 
                                        attribute :>> 'kind' = FLOW; 
                                        attribute :>> 'isIsDerived' = false; 
                                        attribute :>> 'aggregationKind' = UNSET; 
                                        attribute :>> 'isIsPartOfKey' = false; 
                                        attribute :>> 'visibility' = UNSET; 
                                        attribute :>> 'orientation' = OUT; 
                                        attribute :>> 'isMaxInclusive' = false; 
                                    }  
                                }  
                            }  
                            part 'Unit Network Adapter - CMU' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = SOFTWARE; 
                            }  
                        }  
                        part 'Media Loading Unit SW' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = SOFTWARE; 
                        }  
                    }  
                    part 'REC DEFINITION' : PhysicalComponent { 
                        attribute :>> 'isAbstract' = false; 
                        attribute :>> 'isActor' = false; 
                        attribute :>> 'isHuman' = false; 
                        attribute :>> 'nature' = UNSET; 
                        attribute :>> 'kind' = SOFTWARE; 
                        part 'Distribution Network' : PhysicalComponent { 
                            attribute :>> 'isAbstract' = false; 
                            attribute :>> 'isActor' = false; 
                            attribute :>> 'isHuman' = false; 
                            attribute :>> 'nature' = BEHAVIOR; 
                            attribute :>> 'kind' = UNSET; 
                            part 'Unit Network Adapter' : PhysicalComponent { 
                                attribute :>> 'isAbstract' = false; 
                                attribute :>> 'isActor' = false; 
                                attribute :>> 'isHuman' = false; 
                                attribute :>> 'nature' = BEHAVIOR; 
                                attribute :>> 'kind' = UNSET; 
                            }  
                        }  
                    }  
                }  
                part 'Passenger' : PhysicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                    attribute :>> 'nature' = NODE; 
                    attribute :>> 'kind' = UNSET; 
                    port 'CP 1' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = OUT; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = IN; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                    port 'CP 3' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = IN; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                }  
                part 'Crew' : PhysicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                    attribute :>> 'nature' = NODE; 
                    attribute :>> 'kind' = UNSET; 
                    port 'CP 1' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = IN; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        attribute :>> 'isIsStatic' = false; 
                        attribute :>> 'isUnique' = false; 
                        attribute :>> 'isMinInclusive' = false; 
                        attribute :>> 'isIsReadOnly' = false; 
                        attribute :>> 'isOrdered' = false; 
                        attribute :>> 'isIsAbstract' = false; 
                        attribute :>> 'isFinal' = false; 
                        attribute :>> 'kind' = FLOW; 
                        attribute :>> 'isIsDerived' = false; 
                        attribute :>> 'aggregationKind' = UNSET; 
                        attribute :>> 'isIsPartOfKey' = false; 
                        attribute :>> 'visibility' = UNSET; 
                        attribute :>> 'orientation' = OUT; 
                        attribute :>> 'isMaxInclusive' = false; 
                    }  
                }  
                part 'Aircraft' : PhysicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                    attribute :>> 'nature' = NODE; 
                    attribute :>> 'kind' = UNSET; 
                }  
                part 'Maintenance operator' : PhysicalComponent { 
                    attribute :>> 'isAbstract' = false; 
                    attribute :>> 'isActor' = true; 
                    attribute :>> 'isHuman' = true; 
                    attribute :>> 'nature' = NODE; 
                    attribute :>> 'kind' = UNSET; 
                }  
                interface 'Passenger Selections' : ComponentExchange 
                    connect source ::> 'Structure'::'Passenger'.'CP 1'
                    to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Interactions Manager'.'PVDU Airline-Specific Interactions Manager'.'CP 1' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
                interface 'Displayed Elements' : ComponentExchange 
                    connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'PVDU SW'.'PVDU Interactions Manager'.'PVDU Airline-Specific Interactions Manager'.'CP 2'
                    to  target ::> 'Structure'::'Passenger'.'CP 2' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
                interface 'Displayed Elements' : ComponentExchange 
                    connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Central Management Unit SW'.'CMU Interactions Manager'.'CMU Airline-Specific Interactions Manager'.'CP 1'
                    to  target ::> 'Structure'::'Crew'.'CP 1' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
                interface 'Selections' : ComponentExchange 
                    connect source ::> 'Structure'::'Crew'.'CP 2'
                    to  target ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Central Management Unit SW'.'CMU Interactions Manager'.'CMU Airline-Specific Interactions Manager'.'CP 2' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
                interface 'Displayed Elements' : ComponentExchange 
                    connect source ::> 'Structure'::'IFE System'.'BEHAVIOURAL PCs'.'Cabin Video Unit SW'.'Cabin Screen SW'.'CP 1'
                    to  target ::> 'Structure'::'Passenger'.'CP 3' { 
                    attribute :>> 'kind' = FLOW; 
                    attribute :>> 'isOriented' = false; 
                }  
            } 
            package  'Data' { 
                attribute :>> 'visibility' = UNSET; 
                package  'Common 1' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Commands' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Business Entities' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Media' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
                package  'Common 2' { 
                    attribute :>> 'visibility' = UNSET; 
                } 
            } 
        } 
    } 
    enum def 'ProgressStatus'  { 
        enum 'DRAFT'; 
        enum 'TO BE REVIEWED'; 
        enum 'TO BE DISCUSSED'; 
        enum 'REWORK NECESSARY'; 
        enum 'UNDER REWORK'; 
        enum 'REVIEWED'; 
        enum 'TODO_STEPHANE'; 
        enum 'TODO_VEIT'; 
    }  
} 