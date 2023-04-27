import nltk
import numpy as np
from enum import Enum

class SentenseType(Enum):
    UNKNOWN=0
    UBIQUTUS=1
    EVENTDRIVEN=2
    STATEDRIVEN=3

def checkSyntax(tokens,failreason,evalu):
    has_event_trigger = False
    has_noun_before_shall = False
    has_shall = False
    has_verb_after_shall = False
    #isOk = False
    for i in range(0, len(tokens), 1):
            if nltk.pos_tag([tokens[i]])[0][1] == 'MD' and (tokens[i].lower() == 'shall' or tokens[i].lower() == 'should' or tokens[i].lower() == 'must'):
                has_shall = True
                for j in range(0, i, 1):
                    if nltk.pos_tag([tokens[j]])[0][1] == 'NN':
                        has_noun_before_shall = True
                for k in range(i+1, len(tokens), 1):
                    if nltk.pos_tag([tokens[k]])[0][1] == 'VB':
                        has_verb_after_shall = True
            if (nltk.pos_tag([tokens[i]])[0][1] == 'WRB' and tokens[i].lower() == 'when') or (nltk.pos_tag([tokens[i]])[0][1] == 'IN' and (tokens[i].lower() == 'before' or tokens[i].lower() == 'after' or tokens[i].lower() == 'during')):
                has_event_trigger = True
                for l in range(i+1, len(tokens), 1):
                    if nltk.pos_tag([tokens[l]])[0][1] == 'MD' and (tokens[l].lower() == 'shall' or tokens[l].lower() == 'should' or tokens[l].lower() == 'must'):
                        has_shall = True
                        for j in range(i+1, l, 1):
                            if nltk.pos_tag([tokens[j]])[0][1] == 'NN':
                                has_noun_before_shall = True
                                for k in range(j, len(tokens), 1):
                                    if nltk.pos_tag([tokens[k]])[0][1] == 'VB':
                                        has_verb_after_shall = True
                                        
    if (has_event_trigger and has_noun_before_shall and has_shall and has_verb_after_shall):
        # evalu=SentenseType.EVENTDRIVEN
        # failreason='We currently do not support Event Driven EARS.'
        evalu.append(SentenseType.EVENTDRIVEN)
        failreason.append('Event driven requirement detected .Trigger action needs to be applied before validating the requirement.')
        return
        
    if (has_noun_before_shall and has_shall and has_verb_after_shall):
        # evalu=SentenseType.UBIQUTUS
        # failreason='NONE'
        evalu.append(SentenseType.UBIQUTUS)
        failreason.append('NONE')
        return
            
    if(has_shall==False):
        #failreason='Sentence is not imperative. Consider using words like shall, should, must in the sentence.'
        evalu.append(SentenseType.UNKNOWN)
        failreason.append('Sentence is not imperative. Consider using words like shall, should, must in the sentence.')
    elif(has_verb_after_shall==False):
        #failreason='No verb found after auxiliary verb.'
        evalu.append(SentenseType.UNKNOWN)
        failreason.append('No verb found after auxiliary verb.')
    elif(has_noun_before_shall==False):
        #failreason='No noun found before auxiliary verb'
        evalu.append(SentenseType.UNKNOWN)
        failreason.append('No noun found before auxiliary verb')
    