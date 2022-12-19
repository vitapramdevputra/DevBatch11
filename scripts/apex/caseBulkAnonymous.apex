List<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;


//Example:
// 50 account records are inserted.
    // suspiciously duplicate (name) record.
//350 account records
    //trigger will run two times.
    //trigger.new will be populated two times.

list<case> getCases = [select id, status from case where status = 'New'];
for (case eachCase : getCases) {
    eachCase.Status = 'Working';
}
update getCases;