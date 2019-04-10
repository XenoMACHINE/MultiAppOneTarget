
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


A chaque nouveau client/ERP: 

Créer une configuration, un scheme qui execute cette conf puis changer les ST_Version / Build / BundleId
Build le projet -> execute script de création de fichiers manquant dans /App et /ERP

Les fichiers maintenant crées, nous devons les ajouter au projet xCode :
Supprimer dossier /Views du projet (Remove references)
Drag and drop depuis finder le dossier Views dans XCode -> Copy if needed -> Create Groups

Ajouter les fichiers du nouveau client/ERP dans les templates Views et Cells

Fini !


Template

Copié/collé le dossier GootTemplate dans ~/Library/Developer/Xcode/Templates/File\ Templates/
