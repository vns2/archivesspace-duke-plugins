# plugins/local/frontend/models/search_result_data.rb
# redefines facets, which you can see at:
# https://github.com/archivesspace/archivesspace/blob/master/frontend/app/models/search_result_data.rb#L215-L257


require Rails.root.join('app/models/search_result_data')

class SearchResultData

# this changes what facets are requested for searches. Display order follows the order in the array. 
 def self.ACCESSION_FACETS
   ["accession_id_0_u_ustr","accession_date_year","acquisition_type","creators","subjects"]
 end

 def self.RESOURCE_FACETS
   ["finding_aid_status","ead_id","creators","subjects"]
 end
 
 def self.SUBJECT_FACETS
   ["first_term_type","source"]
 end
 
end