set search_path = geosource;

DELETE FROM geosource.metadata;

INSERT INTO metadata VALUES (941, '<gmd:CI_ResponsibleParty xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gml="http://www.opengis.net/gml">
  <gmd:individualName>
    <gco:CharacterString>Nom</gco:CharacterString>
  </gmd:individualName>
  <gmd:organisationName>
    <gco:CharacterString>Organisation</gco:CharacterString>
  </gmd:organisationName>
  <gmd:positionName>
    <gco:CharacterString>Fonction</gco:CharacterString>
  </gmd:positionName>
  <gmd:contactInfo>
    <gmd:CI_Contact>
      <gmd:address>
        <gmd:CI_Address>
          <gmd:electronicMailAddress>
            <gco:CharacterString>Email</gco:CharacterString>
          </gmd:electronicMailAddress>
        </gmd:CI_Address>
      </gmd:address>
    </gmd:CI_Contact>
  </gmd:contactInfo>
  <gmd:role>
    <gmd:CI_RoleCode codeList="./resources/codeList.xml#CI_RoleCode" codeListValue="pointOfContact" />
  </gmd:role>
</gmd:CI_ResponsibleParty>', '2016-04-06T17:57:47', '2016-04-06T17:57:47', 0, NULL, NULL, 0, 0, 'gmd:CI_ResponsibleParty', 'iso19139', NULL, 's', 'n', NULL, NULL, 1, 1, '149b8531-d182-4db0-b7a4-bf5c8d5a6e54', '90ac7f60-29d7-4079-ac31-0b7bbb9fc872');
INSERT INTO metadata VALUES (936, '<gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:gfc="http://www.isotc211.org/2005/gfc" xmlns:gml="http://www.opengis.net/gml" xmlns:geonet="http://www.fao.org/geonetwork">
  <gmd:fileIdentifier>
    <gco:CharacterString>c034cd24-3eb4-4530-b3ed-0e250d476bba</gco:CharacterString>
  </gmd:fileIdentifier>
  <gmd:language>
    <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="fre" />
  </gmd:language>
  <gmd:characterSet>
    <gmd:MD_CharacterSetCode codeListValue="utf8" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_CharacterSetCode" />
  </gmd:characterSet>
  <gmd:hierarchyLevel>
    <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
  </gmd:hierarchyLevel>
  <gmd:hierarchyLevelName>
    <gco:CharacterString>Série de données</gco:CharacterString>
  </gmd:hierarchyLevelName>
  <gmd:contact>
    <gmd:CI_ResponsibleParty>
      <gmd:organisationName>
        <gco:CharacterString>-- Nom du point de contact des métadonnées --</gco:CharacterString>
      </gmd:organisationName>
      <gmd:contactInfo>
        <gmd:CI_Contact>
          <gmd:address>
            <gmd:CI_Address>
              <gmd:electronicMailAddress>
                <gco:CharacterString>-- Adresse email --</gco:CharacterString>
              </gmd:electronicMailAddress>
            </gmd:CI_Address>
          </gmd:address>
        </gmd:CI_Contact>
      </gmd:contactInfo>
      <gmd:role>
        <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="pointOfContact" />
      </gmd:role>
    </gmd:CI_ResponsibleParty>
  </gmd:contact>
  <gmd:dateStamp>
    <gco:DateTime>2013-03-27T16:07:26</gco:DateTime>
  </gmd:dateStamp>
  <gmd:metadataStandardName>
    <gco:CharacterString>ISO 19115:2003/19139</gco:CharacterString>
  </gmd:metadataStandardName>
  <gmd:metadataStandardVersion>
    <gco:CharacterString>1.0</gco:CharacterString>
  </gmd:metadataStandardVersion>
  <gmd:identificationInfo>
    <gmd:MD_DataIdentification>
      <gmd:citation>
        <gmd:CI_Citation>
          <gmd:title>
            <gco:CharacterString>Modèle pour la saisie d''une métadonnée de jeu de données</gco:CharacterString>
          </gmd:title>
          <gmd:date>
            <gmd:CI_Date>
              <gmd:date>
                <gco:Date>2011-01-01</gco:Date>
              </gmd:date>
              <gmd:dateType>
                <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="creation" />
              </gmd:dateType>
            </gmd:CI_Date>
          </gmd:date>
          <gmd:identifier>
            <gmd:MD_Identifier>
              <gmd:code>
                <gco:CharacterString>-- Identifiant créé pour identifier de manière unique la série de données décrite --</gco:CharacterString>
              </gmd:code>
            </gmd:MD_Identifier>
          </gmd:identifier>
        </gmd:CI_Citation>
      </gmd:citation>
      <gmd:abstract>
        <gco:CharacterString>-- Court résumé explicatif du contenu de la ressource --</gco:CharacterString>
      </gmd:abstract>
      <gmd:pointOfContact>
        <gmd:CI_ResponsibleParty>
          <gmd:organisationName>
            <gco:CharacterString>-- Nom de l''organisation responsable de la série de données --</gco:CharacterString>
          </gmd:organisationName>
          <gmd:contactInfo>
            <gmd:CI_Contact>
              <gmd:address>
                <gmd:CI_Address>
                  <gmd:electronicMailAddress>
                    <gco:CharacterString>-- Adresse email --</gco:CharacterString>
                  </gmd:electronicMailAddress>
                </gmd:CI_Address>
              </gmd:address>
            </gmd:CI_Contact>
          </gmd:contactInfo>
          <gmd:role>
            <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="owner" />
          </gmd:role>
        </gmd:CI_ResponsibleParty>
      </gmd:pointOfContact>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://www.isotc211.org/2005/resources/codeList.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
          <gmd:thesaurusName>
            <gmd:CI_Citation>
              <gmd:title>
                <gco:CharacterString>GEMET - INSPIRE themes, version 1.0</gco:CharacterString>
              </gmd:title>
              <gmd:date>
                <gmd:CI_Date>
                  <gmd:date>
                    <gco:Date>2008-06-01</gco:Date>
                  </gmd:date>
                  <gmd:dateType>
                    <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                  </gmd:dateType>
                </gmd:CI_Date>
              </gmd:date>
              <gmd:identifier>
                <gmd:MD_Identifier>
                  <gmd:code>
                    <gmx:Anchor xlink:href="http://localhost:8080/geosource/srv/fre/thesaurus.download?ref=external.theme.inspire-theme">geonetwork.thesaurus.external.theme.inspire-theme</gmx:Anchor>
                  </gmd:code>
                </gmd:MD_Identifier>
              </gmd:identifier>
            </gmd:CI_Citation>
          </gmd:thesaurusName>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:keyword>
            <gco:CharacterString>-- Mots-clé complémentaire (facultatif) --</gco:CharacterString>
          </gmd:keyword>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:accessConstraints>
          <gmd:otherConstraints>
            <gco:CharacterString>-- Restrictions d''accès public au sens INSPIRE (dans ce cas, la valeur ''Autres restrictions'' doit obligatoirement être sélectionnée dans les contraintes d''accès) --</gco:CharacterString>
          </gmd:otherConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>
      <gmd:resourceConstraints>
        <gmd:MD_Constraints>
          <gmd:useLimitation>
            <gco:CharacterString>-- Conditions applicables à l''accès et à l''utilisation de la série de données --</gco:CharacterString>
          </gmd:useLimitation>
        </gmd:MD_Constraints>
      </gmd:resourceConstraints>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:distance>
            <gco:Distance uom="m" />
          </gmd:distance>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:equivalentScale>
            <gmd:MD_RepresentativeFraction>
              <gmd:denominator>
                <gco:Integer />
              </gmd:denominator>
            </gmd:MD_RepresentativeFraction>
          </gmd:equivalentScale>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:language>
        <gco:CharacterString>fre</gco:CharacterString>
      </gmd:language>
      <gmd:topicCategory>
        <gmd:MD_TopicCategoryCode>environment</gmd:MD_TopicCategoryCode>
      </gmd:topicCategory>
      <gmd:extent>
        <gmd:EX_Extent>
          <gmd:geographicElement>
            <gmd:EX_GeographicBoundingBox>
              <gmd:westBoundLongitude>
                <gco:Decimal>-5.79028</gco:Decimal>
              </gmd:westBoundLongitude>
              <gmd:eastBoundLongitude>
                <gco:Decimal>9.56222</gco:Decimal>
              </gmd:eastBoundLongitude>
              <gmd:southBoundLatitude>
                <gco:Decimal>41.3649</gco:Decimal>
              </gmd:southBoundLatitude>
              <gmd:northBoundLatitude>
                <gco:Decimal>51.0911</gco:Decimal>
              </gmd:northBoundLatitude>
            </gmd:EX_GeographicBoundingBox>
          </gmd:geographicElement>
          <gmd:temporalElement xmlns:gn="http://www.fao.org/geonetwork">
            <gmd:EX_TemporalExtent>
              <gmd:extent>
                <gml:TimePeriod gml:id="">
                  <gml:beginPosition />
                </gml:TimePeriod>
              </gmd:extent>
            </gmd:EX_TemporalExtent>
          </gmd:temporalElement>
        </gmd:EX_Extent>
      </gmd:extent>
    </gmd:MD_DataIdentification>
  </gmd:identificationInfo>
  <gmd:distributionInfo>
    <gmd:MD_Distribution>
      <gmd:distributionFormat>
        <gmd:MD_Format>
          <gmd:name>
            <gco:CharacterString>-- Description du ou des concepts en language machine spécifiant la représentation des objets de données dans un enregistrement, un fichier, un message, un dispositif de stockage ou un canal de transmission --</gco:CharacterString>
          </gmd:name>
          <gmd:version>
            <gco:CharacterString>-- Version de l''encodage --</gco:CharacterString>
          </gmd:version>
        </gmd:MD_Format>
      </gmd:distributionFormat>
      <gmd:transferOptions>
        <gmd:MD_DigitalTransferOptions>
          <gmd:onLine>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL>-- Lien vers la ressource décrite elle-même, et/ou vers des informations complémentaires la concernant --</gmd:URL>
              </gmd:linkage>
            </gmd:CI_OnlineResource>
          </gmd:onLine>
        </gmd:MD_DigitalTransferOptions>
      </gmd:transferOptions>
    </gmd:MD_Distribution>
  </gmd:distributionInfo>
  <gmd:dataQualityInfo>
    <gmd:DQ_DataQuality>
      <gmd:scope>
        <gmd:DQ_Scope>
          <gmd:level>
            <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
          </gmd:level>
        </gmd:DQ_Scope>
      </gmd:scope>
      <gmd:report>
        <gmd:DQ_DomainConsistency>
          <gmd:result>
            <gmd:DQ_ConformanceResult>
              <gmd:specification>
                <gmd:CI_Citation>
                  <gmd:title>
                    <gco:CharacterString>-- Référence des règles de mise en oeuvre adoptées en vertu de l’article 7, paragraphe 1, de la directive 2007/2/CE ou des autres spécifications auxquelles la ressource est conforme --</gco:CharacterString>
                  </gmd:title>
                  <gmd:date>
                    <gmd:CI_Date>
                      <gmd:date>
                        <gco:Date>2000-01-01</gco:Date>
                      </gmd:date>
                      <gmd:dateType>
                        <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                      </gmd:dateType>
                    </gmd:CI_Date>
                  </gmd:date>
                </gmd:CI_Citation>
              </gmd:specification>
              <gmd:explanation>
                <gco:CharacterString>-- Information complémentaire sur la conformité (non INSPIRE) --</gco:CharacterString>
              </gmd:explanation>
              <gmd:pass>
                <gco:Boolean>undefined</gco:Boolean>
              </gmd:pass>
            </gmd:DQ_ConformanceResult>
          </gmd:result>
        </gmd:DQ_DomainConsistency>
      </gmd:report>
      <gmd:lineage>
        <gmd:LI_Lineage>
          <gmd:statement>
            <gco:CharacterString>-- Historique du traitement et/ou de la qualité générale de la série de
données géographiques --</gco:CharacterString>
          </gmd:statement>
        </gmd:LI_Lineage>
      </gmd:lineage>
    </gmd:DQ_DataQuality>
  </gmd:dataQualityInfo>
</gmd:MD_Metadata>', '2016-04-07T18:04:55', '2016-04-06T17:57:46', 0, NULL, NULL, 0, 0, 'gmd:MD_Metadata', 'iso19139', NULL, 'y', 'n', NULL, NULL, 1, 1, '149b8531-d182-4db0-b7a4-bf5c8d5a6e54', 'a7796114-fef4-4df9-93bf-35032e31a486');
INSERT INTO metadata VALUES (937, '<gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:gfc="http://www.isotc211.org/2005/gfc" xmlns:gml="http://www.opengis.net/gml" xmlns:geonet="http://www.fao.org/geonetwork">
  <gmd:fileIdentifier>
    <gco:CharacterString>c034cd24-3eb4-4530-b3ed-0e250d476bba</gco:CharacterString>
  </gmd:fileIdentifier>
  <gmd:language>
    <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="fre" />
  </gmd:language>
  <gmd:characterSet>
    <gmd:MD_CharacterSetCode codeListValue="utf8" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_CharacterSetCode" />
  </gmd:characterSet>
  <gmd:hierarchyLevel>
    <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
  </gmd:hierarchyLevel>
  <gmd:hierarchyLevelName>
    <gco:CharacterString>Série de données</gco:CharacterString>
  </gmd:hierarchyLevelName>
  <gmd:contact>
    <gmd:CI_ResponsibleParty>
      <gmd:organisationName>
        <gco:CharacterString>-- Nom du point de contact des métadonnées --</gco:CharacterString>
      </gmd:organisationName>
      <gmd:contactInfo>
        <gmd:CI_Contact>
          <gmd:address>
            <gmd:CI_Address>
              <gmd:electronicMailAddress>
                <gco:CharacterString>-- Adresse email --</gco:CharacterString>
              </gmd:electronicMailAddress>
            </gmd:CI_Address>
          </gmd:address>
        </gmd:CI_Contact>
      </gmd:contactInfo>
      <gmd:role>
        <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="pointOfContact" />
      </gmd:role>
    </gmd:CI_ResponsibleParty>
  </gmd:contact>
  <gmd:dateStamp>
    <gco:DateTime>2013-03-27T16:07:26</gco:DateTime>
  </gmd:dateStamp>
  <gmd:metadataStandardName>
    <gco:CharacterString>ISO 19115:2003/19139</gco:CharacterString>
  </gmd:metadataStandardName>
  <gmd:metadataStandardVersion>
    <gco:CharacterString>1.0</gco:CharacterString>
  </gmd:metadataStandardVersion>
  <gmd:identificationInfo>
    <gmd:MD_DataIdentification>
      <gmd:citation>
        <gmd:CI_Citation>
          <gmd:title>
            <gco:CharacterString>Modèle pour la saisie d''une métadonnée de dispositif de collecte</gco:CharacterString>
          </gmd:title>
          <gmd:date>
            <gmd:CI_Date>
              <gmd:date>
                <gco:Date>2011-01-01</gco:Date>
              </gmd:date>
              <gmd:dateType>
                <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="creation" />
              </gmd:dateType>
            </gmd:CI_Date>
          </gmd:date>
          <gmd:identifier>
            <gmd:MD_Identifier>
              <gmd:code>
                <gco:CharacterString>-- Identifiant créé pour identifier de manière unique la série de données décrite --</gco:CharacterString>
              </gmd:code>
            </gmd:MD_Identifier>
          </gmd:identifier>
        </gmd:CI_Citation>
      </gmd:citation>
      <gmd:abstract>
        <gco:CharacterString>-- Court résumé explicatif du contenu de la ressource --</gco:CharacterString>
      </gmd:abstract>
      <gmd:pointOfContact>
        <gmd:CI_ResponsibleParty>
          <gmd:organisationName>
            <gco:CharacterString>-- Nom de l''organisation responsable de la série de données --</gco:CharacterString>
          </gmd:organisationName>
          <gmd:contactInfo>
            <gmd:CI_Contact>
              <gmd:address>
                <gmd:CI_Address>
                  <gmd:electronicMailAddress>
                    <gco:CharacterString>-- Adresse email --</gco:CharacterString>
                  </gmd:electronicMailAddress>
                </gmd:CI_Address>
              </gmd:address>
            </gmd:CI_Contact>
          </gmd:contactInfo>
          <gmd:role>
            <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="owner" />
          </gmd:role>
        </gmd:CI_ResponsibleParty>
      </gmd:pointOfContact>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://www.isotc211.org/2005/resources/codeList.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
          <gmd:thesaurusName>
            <gmd:CI_Citation>
              <gmd:title>
                <gco:CharacterString>GEMET - INSPIRE themes, version 1.0</gco:CharacterString>
              </gmd:title>
              <gmd:date>
                <gmd:CI_Date>
                  <gmd:date>
                    <gco:Date>2008-06-01</gco:Date>
                  </gmd:date>
                  <gmd:dateType>
                    <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                  </gmd:dateType>
                </gmd:CI_Date>
              </gmd:date>
              <gmd:identifier>
                <gmd:MD_Identifier>
                  <gmd:code>
                    <gmx:Anchor xlink:href="http://localhost:8080/geosource/srv/fre/thesaurus.download?ref=external.theme.inspire-theme">geonetwork.thesaurus.external.theme.inspire-theme</gmx:Anchor>
                  </gmd:code>
                </gmd:MD_Identifier>
              </gmd:identifier>
            </gmd:CI_Citation>
          </gmd:thesaurusName>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:keyword>
            <gco:CharacterString>-- Mots-clé complémentaire (facultatif) --</gco:CharacterString>
          </gmd:keyword>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:accessConstraints>
          <gmd:otherConstraints>
            <gco:CharacterString>-- Restrictions d''accès public au sens INSPIRE (dans ce cas, la valeur ''Autres restrictions'' doit obligatoirement être sélectionnée dans les contraintes d''accès) --</gco:CharacterString>
          </gmd:otherConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>
      <gmd:resourceConstraints>
        <gmd:MD_Constraints>
          <gmd:useLimitation>
            <gco:CharacterString>-- Conditions applicables à l''accès et à l''utilisation de la série de données --</gco:CharacterString>
          </gmd:useLimitation>
        </gmd:MD_Constraints>
      </gmd:resourceConstraints>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:distance>
            <gco:Distance uom="m" />
          </gmd:distance>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:equivalentScale>
            <gmd:MD_RepresentativeFraction>
              <gmd:denominator>
                <gco:Integer />
              </gmd:denominator>
            </gmd:MD_RepresentativeFraction>
          </gmd:equivalentScale>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:language>
        <gco:CharacterString>fre</gco:CharacterString>
      </gmd:language>
      <gmd:topicCategory>
        <gmd:MD_TopicCategoryCode>environment</gmd:MD_TopicCategoryCode>
      </gmd:topicCategory>
      <gmd:extent>
        <gmd:EX_Extent>
          <gmd:geographicElement>
            <gmd:EX_GeographicBoundingBox>
              <gmd:westBoundLongitude>
                <gco:Decimal>-5.79028</gco:Decimal>
              </gmd:westBoundLongitude>
              <gmd:eastBoundLongitude>
                <gco:Decimal>9.56222</gco:Decimal>
              </gmd:eastBoundLongitude>
              <gmd:southBoundLatitude>
                <gco:Decimal>41.3649</gco:Decimal>
              </gmd:southBoundLatitude>
              <gmd:northBoundLatitude>
                <gco:Decimal>51.0911</gco:Decimal>
              </gmd:northBoundLatitude>
            </gmd:EX_GeographicBoundingBox>
          </gmd:geographicElement>
          <gmd:temporalElement xmlns:gn="http://www.fao.org/geonetwork">
            <gmd:EX_TemporalExtent>
              <gmd:extent>
                <gml:TimePeriod gml:id="">
                  <gml:beginPosition />
                </gml:TimePeriod>
              </gmd:extent>
            </gmd:EX_TemporalExtent>
          </gmd:temporalElement>
        </gmd:EX_Extent>
      </gmd:extent>
    </gmd:MD_DataIdentification>
  </gmd:identificationInfo>
  <gmd:distributionInfo>
    <gmd:MD_Distribution>
      <gmd:distributionFormat>
        <gmd:MD_Format>
          <gmd:name>
            <gco:CharacterString>-- Description du ou des concepts en language machine spécifiant la représentation des objets de données dans un enregistrement, un fichier, un message, un dispositif de stockage ou un canal de transmission --</gco:CharacterString>
          </gmd:name>
          <gmd:version>
            <gco:CharacterString>-- Version de l''encodage --</gco:CharacterString>
          </gmd:version>
        </gmd:MD_Format>
      </gmd:distributionFormat>
      <gmd:transferOptions>
        <gmd:MD_DigitalTransferOptions>
          <gmd:onLine>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL>-- Lien vers la ressource décrite elle-même, et/ou vers des informations complémentaires la concernant --</gmd:URL>
              </gmd:linkage>
            </gmd:CI_OnlineResource>
          </gmd:onLine>
        </gmd:MD_DigitalTransferOptions>
      </gmd:transferOptions>
    </gmd:MD_Distribution>
  </gmd:distributionInfo>
  <gmd:dataQualityInfo>
    <gmd:DQ_DataQuality>
      <gmd:scope>
        <gmd:DQ_Scope>
          <gmd:level>
            <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
          </gmd:level>
        </gmd:DQ_Scope>
      </gmd:scope>
      <gmd:report>
        <gmd:DQ_DomainConsistency>
          <gmd:result>
            <gmd:DQ_ConformanceResult>
              <gmd:specification>
                <gmd:CI_Citation>
                  <gmd:title>
                    <gco:CharacterString>-- Référence des règles de mise en oeuvre adoptées en vertu de l’article 7, paragraphe 1, de la directive 2007/2/CE ou des autres spécifications auxquelles la ressource est conforme --</gco:CharacterString>
                  </gmd:title>
                  <gmd:date>
                    <gmd:CI_Date>
                      <gmd:date>
                        <gco:Date>2000-01-01</gco:Date>
                      </gmd:date>
                      <gmd:dateType>
                        <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                      </gmd:dateType>
                    </gmd:CI_Date>
                  </gmd:date>
                </gmd:CI_Citation>
              </gmd:specification>
              <gmd:explanation>
                <gco:CharacterString>-- Information complémentaire sur la conformité (non INSPIRE) --</gco:CharacterString>
              </gmd:explanation>
              <gmd:pass>
                <gco:Boolean>undefined</gco:Boolean>
              </gmd:pass>
            </gmd:DQ_ConformanceResult>
          </gmd:result>
        </gmd:DQ_DomainConsistency>
      </gmd:report>
      <gmd:lineage>
        <gmd:LI_Lineage>
          <gmd:statement>
            <gco:CharacterString>-- Historique du traitement et/ou de la qualité générale de la série de
données géographiques --</gco:CharacterString>
          </gmd:statement>
        </gmd:LI_Lineage>
      </gmd:lineage>
    </gmd:DQ_DataQuality>
  </gmd:dataQualityInfo>
</gmd:MD_Metadata>', '2016-04-07T18:05:09', '2016-04-06T17:57:46', 0, NULL, NULL, 0, 0, 'gmd:MD_Metadata', 'iso19139', NULL, 'y', 'n', NULL, NULL, 1, 1, '149b8531-d182-4db0-b7a4-bf5c8d5a6e54', 'a7796114-fef4-4df9-93bf-35032e31a487');
INSERT INTO metadata VALUES (1367, '<gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gmx="http://www.isotc211.org/2005/gmx" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:gfc="http://www.isotc211.org/2005/gfc" xmlns:gml="http://www.opengis.net/gml" xmlns:geonet="http://www.fao.org/geonetwork">
  <gmd:fileIdentifier>
    <gco:CharacterString>c034cd24-3eb4-4530-b3ed-0e250d476bba</gco:CharacterString>
  </gmd:fileIdentifier>
  <gmd:language>
    <gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/" codeListValue="fre" />
  </gmd:language>
  <gmd:characterSet>
    <gmd:MD_CharacterSetCode codeListValue="utf8" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_CharacterSetCode" />
  </gmd:characterSet>
  <gmd:hierarchyLevel>
    <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
  </gmd:hierarchyLevel>
  <gmd:hierarchyLevelName>
    <gco:CharacterString>Série de données</gco:CharacterString>
  </gmd:hierarchyLevelName>
  <gmd:contact>
    <gmd:CI_ResponsibleParty>
      <gmd:organisationName>
        <gco:CharacterString>-- Nom du point de contact des métadonnées --</gco:CharacterString>
      </gmd:organisationName>
      <gmd:contactInfo>
        <gmd:CI_Contact>
          <gmd:address>
            <gmd:CI_Address>
              <gmd:electronicMailAddress>
                <gco:CharacterString>-- Adresse email --</gco:CharacterString>
              </gmd:electronicMailAddress>
            </gmd:CI_Address>
          </gmd:address>
        </gmd:CI_Contact>
      </gmd:contactInfo>
      <gmd:role>
        <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="pointOfContact" />
      </gmd:role>
    </gmd:CI_ResponsibleParty>
  </gmd:contact>
  <gmd:dateStamp>
    <gco:DateTime>2016-04-07T18:08:20</gco:DateTime>
  </gmd:dateStamp>
  <gmd:metadataStandardName>
    <gco:CharacterString>ISO 19115:2003/19139</gco:CharacterString>
  </gmd:metadataStandardName>
  <gmd:metadataStandardVersion>
    <gco:CharacterString>1.0</gco:CharacterString>
  </gmd:metadataStandardVersion>
  <gmd:identificationInfo>
    <gmd:MD_DataIdentification>
      <gmd:citation>
        <gmd:CI_Citation>
          <gmd:title>
            <gco:CharacterString>métadonnée pour les jdd tests</gco:CharacterString>
          </gmd:title>
          <gmd:date>
            <gmd:CI_Date>
              <gmd:date>
                <gco:Date>2011-01-01</gco:Date>
              </gmd:date>
              <gmd:dateType>
                <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="creation" />
              </gmd:dateType>
            </gmd:CI_Date>
          </gmd:date>
          <gmd:identifier>
            <gmd:MD_Identifier>
              <gmd:code>
                <gco:CharacterString>-- Identifiant créé pour identifier de manière unique la série de données décrite --</gco:CharacterString>
              </gmd:code>
            </gmd:MD_Identifier>
          </gmd:identifier>
          <gmd:identifier>
            <gmd:MD_Identifier>
              <gmd:code>
                <gco:CharacterString>http://localhost:8080/geosource/metadata/srv/c034cd24-3eb4-4530-b3ed-0e250d476bba.xml</gco:CharacterString>
              </gmd:code>
            </gmd:MD_Identifier>
          </gmd:identifier>
        </gmd:CI_Citation>
      </gmd:citation>
      <gmd:abstract>
        <gco:CharacterString>-- Court résumé explicatif du contenu de la ressource --</gco:CharacterString>
      </gmd:abstract>
      <gmd:pointOfContact>
        <gmd:CI_ResponsibleParty>
          <gmd:organisationName>
            <gco:CharacterString>-- Nom de l''organisation responsable de la série de données --</gco:CharacterString>
          </gmd:organisationName>
          <gmd:contactInfo>
            <gmd:CI_Contact>
              <gmd:address>
                <gmd:CI_Address>
                  <gmd:electronicMailAddress>
                    <gco:CharacterString>-- Adresse email --</gco:CharacterString>
                  </gmd:electronicMailAddress>
                </gmd:CI_Address>
              </gmd:address>
            </gmd:CI_Contact>
          </gmd:contactInfo>
          <gmd:role>
            <gmd:CI_RoleCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_RoleCode" codeListValue="owner" />
          </gmd:role>
        </gmd:CI_ResponsibleParty>
      </gmd:pointOfContact>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://www.isotc211.org/2005/resources/codeList.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
          <gmd:thesaurusName>
            <gmd:CI_Citation>
              <gmd:title>
                <gco:CharacterString>GEMET - INSPIRE themes, version 1.0</gco:CharacterString>
              </gmd:title>
              <gmd:date>
                <gmd:CI_Date>
                  <gmd:date>
                    <gco:Date>2008-06-01</gco:Date>
                  </gmd:date>
                  <gmd:dateType>
                    <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                  </gmd:dateType>
                </gmd:CI_Date>
              </gmd:date>
              <gmd:identifier>
                <gmd:MD_Identifier>
                  <gmd:code>
                    <gmx:Anchor xlink:href="http://localhost:8080/geosource/srv/fre/thesaurus.download?ref=external.theme.inspire-theme">geonetwork.thesaurus.external.theme.inspire-theme</gmx:Anchor>
                  </gmd:code>
                </gmd:MD_Identifier>
              </gmd:identifier>
            </gmd:CI_Citation>
          </gmd:thesaurusName>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:descriptiveKeywords>
        <gmd:MD_Keywords>
          <gmd:keyword>
            <gco:CharacterString>-- Mots-clé complémentaire (facultatif) --</gco:CharacterString>
          </gmd:keyword>
          <gmd:type>
            <gmd:MD_KeywordTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_KeywordTypeCode" codeListValue="theme" />
          </gmd:type>
        </gmd:MD_Keywords>
      </gmd:descriptiveKeywords>
      <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:accessConstraints>
          <gmd:otherConstraints>
            <gco:CharacterString>-- Restrictions d''accès public au sens INSPIRE (dans ce cas, la valeur ''Autres restrictions'' doit obligatoirement être sélectionnée dans les contraintes d''accès) --</gco:CharacterString>
          </gmd:otherConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>
      <gmd:resourceConstraints>
        <gmd:MD_Constraints>
          <gmd:useLimitation>
            <gco:CharacterString>-- Conditions applicables à l''accès et à l''utilisation de la série de données --</gco:CharacterString>
          </gmd:useLimitation>
        </gmd:MD_Constraints>
      </gmd:resourceConstraints>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:distance>
            <gco:Distance uom="m" />
          </gmd:distance>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:spatialResolution>
        <gmd:MD_Resolution>
          <gmd:equivalentScale>
            <gmd:MD_RepresentativeFraction>
              <gmd:denominator>
                <gco:Integer />
              </gmd:denominator>
            </gmd:MD_RepresentativeFraction>
          </gmd:equivalentScale>
        </gmd:MD_Resolution>
      </gmd:spatialResolution>
      <gmd:language>
        <gco:CharacterString>fre</gco:CharacterString>
      </gmd:language>
      <gmd:topicCategory>
        <gmd:MD_TopicCategoryCode>environment</gmd:MD_TopicCategoryCode>
      </gmd:topicCategory>
      <gmd:extent>
        <gmd:EX_Extent>
          <gmd:geographicElement>
            <gmd:EX_GeographicBoundingBox>
              <gmd:westBoundLongitude>
                <gco:Decimal>-5.79028</gco:Decimal>
              </gmd:westBoundLongitude>
              <gmd:eastBoundLongitude>
                <gco:Decimal>9.56222</gco:Decimal>
              </gmd:eastBoundLongitude>
              <gmd:southBoundLatitude>
                <gco:Decimal>41.3649</gco:Decimal>
              </gmd:southBoundLatitude>
              <gmd:northBoundLatitude>
                <gco:Decimal>51.0911</gco:Decimal>
              </gmd:northBoundLatitude>
            </gmd:EX_GeographicBoundingBox>
          </gmd:geographicElement>
          <gmd:temporalElement xmlns:gn="http://www.fao.org/geonetwork">
            <gmd:EX_TemporalExtent>
              <gmd:extent>
                <gml:TimePeriod gml:id="d1788e351a1052958">
                  <gml:beginPosition />
                </gml:TimePeriod>
              </gmd:extent>
            </gmd:EX_TemporalExtent>
          </gmd:temporalElement>
        </gmd:EX_Extent>
      </gmd:extent>
    </gmd:MD_DataIdentification>
  </gmd:identificationInfo>
  <gmd:distributionInfo>
    <gmd:MD_Distribution>
      <gmd:distributionFormat>
        <gmd:MD_Format>
          <gmd:name>
            <gco:CharacterString>-- Description du ou des concepts en language machine spécifiant la représentation des objets de données dans un enregistrement, un fichier, un message, un dispositif de stockage ou un canal de transmission --</gco:CharacterString>
          </gmd:name>
          <gmd:version>
            <gco:CharacterString>-- Version de l''encodage --</gco:CharacterString>
          </gmd:version>
        </gmd:MD_Format>
      </gmd:distributionFormat>
      <gmd:transferOptions>
        <gmd:MD_DigitalTransferOptions>
          <gmd:onLine>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL>-- Lien vers la ressource décrite elle-même, et/ou vers des informations complémentaires la concernant --</gmd:URL>
              </gmd:linkage>
            </gmd:CI_OnlineResource>
          </gmd:onLine>
        </gmd:MD_DigitalTransferOptions>
      </gmd:transferOptions>
    </gmd:MD_Distribution>
  </gmd:distributionInfo>
  <gmd:dataQualityInfo>
    <gmd:DQ_DataQuality>
      <gmd:scope>
        <gmd:DQ_Scope>
          <gmd:level>
            <gmd:MD_ScopeCode codeListValue="dataset" codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_ScopeCode" />
          </gmd:level>
        </gmd:DQ_Scope>
      </gmd:scope>
      <gmd:report>
        <gmd:DQ_DomainConsistency>
          <gmd:result>
            <gmd:DQ_ConformanceResult>
              <gmd:specification>
                <gmd:CI_Citation>
                  <gmd:title>
                    <gco:CharacterString>-- Référence des règles de mise en oeuvre adoptées en vertu de l’article 7, paragraphe 1, de la directive 2007/2/CE ou des autres spécifications auxquelles la ressource est conforme --</gco:CharacterString>
                  </gmd:title>
                  <gmd:date>
                    <gmd:CI_Date>
                      <gmd:date>
                        <gco:Date>2000-01-01</gco:Date>
                      </gmd:date>
                      <gmd:dateType>
                        <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_DateTypeCode" codeListValue="publication" />
                      </gmd:dateType>
                    </gmd:CI_Date>
                  </gmd:date>
                </gmd:CI_Citation>
              </gmd:specification>
              <gmd:explanation>
                <gco:CharacterString>-- Information complémentaire sur la conformité (non INSPIRE) --</gco:CharacterString>
              </gmd:explanation>
            </gmd:DQ_ConformanceResult>
          </gmd:result>
        </gmd:DQ_DomainConsistency>
      </gmd:report>
      <gmd:lineage>
        <gmd:LI_Lineage>
          <gmd:statement>
            <gco:CharacterString>-- Historique du traitement et/ou de la qualité générale de la série de
données géographiques --</gco:CharacterString>
          </gmd:statement>
        </gmd:LI_Lineage>
      </gmd:lineage>
    </gmd:DQ_DataQuality>
  </gmd:dataQualityInfo>
</gmd:MD_Metadata>', '2016-04-07T18:08:20', '2016-04-07T18:05:26', 0, NULL, NULL, 0, 0, NULL, 'iso19139', NULL, 'n', 'n', NULL, NULL, 2, 1, '149b8531-d182-4db0-b7a4-bf5c8d5a6e54', 'c034cd24-3eb4-4530-b3ed-0e250d476bba');

DELETE FROM operationallowed;

INSERT INTO operationallowed VALUES (1, 936, 0);
INSERT INTO operationallowed VALUES (1, 936, 3);
INSERT INTO operationallowed VALUES (1, 941, 0);
INSERT INTO operationallowed VALUES (1, 941, 3);
INSERT INTO operationallowed VALUES (1, 937, 0);
INSERT INTO operationallowed VALUES (1, 937, 3);
INSERT INTO operationallowed VALUES (2, 1367, 0);
INSERT INTO operationallowed VALUES (2, 1367, 3);

DELETE FROM params;
DELETE FROM requests;

grant select on table geosource.metadata to ogam;