map<string, EmailDomain__mdt> emails = EmailDomain__mdt.getAll();
system.debug(emails);

EmailDomain__mdt gmail = EmailDomain__mdt.getInstance('gmail');
system.debug('gmail is ===> '+gmail);

// custom metadata types --> custom object

// custom metadata types records(data) is ALSO  metadata