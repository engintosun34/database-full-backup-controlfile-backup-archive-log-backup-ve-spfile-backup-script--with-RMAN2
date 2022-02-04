RUN
{
configure controlfile autobackup on;
BACKUP as COMPRESSED BACKUPSET DATABASE FORMAT '/backup/backup1/dbf_%d_%t_%s_%p_.rman';
backup archivelog all format '/backup/backup1/Full_%d_%t_%s_%p.arch';
backup current controlfile format '/backup/backup1/Full_%d_%t_%s_%p.ctl';
 backup spfile format '/backup/backup1/spfile_%d_%t_%s_%p.rman';
}
