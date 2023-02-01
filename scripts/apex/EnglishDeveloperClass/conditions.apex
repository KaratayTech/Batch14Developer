ConditionClass_assignment ct = new ConditionClass_assignment();
string mvalue1 = ct.ifClassMethod(1);
system.debug(mvalue1);
string mvalue12 = ct.ifClassMethod(12);
system.debug(mvalue12);

string month1 = ct.caseMethod('January');
system.debug(month1);
string month12 = ct.caseMethod('December');
system.debug(month12);