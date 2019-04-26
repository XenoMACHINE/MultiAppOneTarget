
Documentation

Project -> Info -> Configurations :
Chaque nom d’app

Manage scheme :
Pour chaque configuration, un scheme qui execute celle-ci

Targets-> Build settings :
- ST_AppVersion = version de l’app X.Y.Z
- ST_BuildVersion = version du build
- ST_BundleId = bundle id de l’app (com.goot.nomdelapp)
- ST_BundleName = nom de l’app (Automatiquement = nom de la conf)
- Active Compilation Conditions : (Automatiquement = nom de la conf)


~ A chaque nouveau client/ERP : 

    Créer une configuration dans appByIndustry
    Créer un scheme qui execute cette conf puis changer les ST_Version / Build / BundleId
    Mettre à jour les dictionnaire "appByERP" et "appByIndustry" de la class ConfigurationManager
    Ajouter le(s) dossier(s) au template "Overrides folders"

~ Fini !




Template

Copié/collé le dossier GootTemplate dans ~/Library/Developer/Xcode/Templates/File\ Templates/
