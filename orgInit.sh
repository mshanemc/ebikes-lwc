sfdx force:config:set apiVersion=45.0
sfdx force:org:create -s -f config/project-scratch-def.json
sfdx force:source:push
sfdx force:user:permset:assign -n ebikes
sfdx force:data:tree:import --plan ./data/sample-data-plan.json
sfdx force:org:open -r lightning/n/Product_Explorer
