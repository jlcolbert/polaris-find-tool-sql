SELECT 
  DISTINCT bt.BibliographicRecordID 
FROM 
  BibliographicTags bt 
  JOIN BibliographicSubfields bs ON bt.BibliographicTagID = bs.BibliographicTagID 
WHERE 
  bs.Subfield = '5' 
  AND bs.Data LIKE '[INSERT INSTITUTIONAL MARC CODE HERE]'
