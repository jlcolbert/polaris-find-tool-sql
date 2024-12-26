--- Specific 6XX

SELECT 
  DISTINCT br.BibliographicRecordID 
FROM 
  BibliographicRecords br 
WHERE 
  br.LiteraryForm = '0' 
  AND br.BibliographicRecordID NOT IN (
    SELECT 
      DISTINCT bt.BibliographicRecordID 
    FROM 
      BibliographicTags bt 
    WHERE 
      bt.TagNumber IN (
        600, 610, 611, 630, 650, 650, 651, 655
      )
  )


--- All possible 6XX

SELECT 
  DISTINCT br.BibliographicRecordID 
FROM 
  BibliographicRecords br 
WHERE 
  br.LiteraryForm = '0' 
  AND br.BibliographicRecordID NOT IN (
    SELECT 
      DISTINCT bt.BibliographicRecordID 
    FROM 
      BibliographicTags bt 
    WHERE 
      bt.TagNumber LIKE '6__'
  )
