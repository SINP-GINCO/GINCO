UPDATE metadata.table_field SET is_mandatory=1 WHERE data = 'identifiantpermanent';
UPDATE metadata_work.table_field SET is_mandatory=1 WHERE data = 'identifiantpermanent';

UPDATE metadata.file_field SET is_mandatory=0 WHERE data = 'identifiantpermanent';
UPDATE metadata_work.file_field SET is_mandatory=0 WHERE data = 'identifiantpermanent';