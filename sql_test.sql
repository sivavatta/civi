select
ct.display_name 'Contact display name',
ct.organization_name 'Employer organisation name',
count(c.status_id) 'Number (count) of cases'
from civicrm_contact ct
inner join civicrm_case_contact cc on ct.id=cc.contact_id
inner join civicrm_case c on cc.case_id=c.id where ct.contact_type='Individual' and c.status_id='ongoing'
group by ct.display_name,ct.organization_name;