.class public Lcom/android/server/pm/FacebookPackageUtil;
.super Ljava/lang/Object;
.source "FacebookPackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;
    }
.end annotation


# instance fields
.field private final CERT_PATH:Ljava/lang/String;

.field private final FACEBOOK_PACKAGE_PREFIX:Ljava/lang/String;

.field private final FBSIG_SUFFIX:Ljava/lang/String;

.field private final FB_MANIFEST:Ljava/lang/String;

.field private final FB_PERMISSION_PATH:Ljava/lang/String;

.field private final MAX_FBSIG_CANDIDATES:I

.field private final SF_SUFFIX:Ljava/lang/String;

.field private final SIG_ALG:Ljava/lang/String;

.field private final allowedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookCert:Ljava/security/cert/X509Certificate;

.field private final mPackageManager:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5
    .param p1, "packageManager"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v3, "etc/security/facebook.crt"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->CERT_PATH:Ljava/lang/String;

    .line 43
    const-string v3, "etc/security/FBPermissions.xml"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FB_PERMISSION_PATH:Ljava/lang/String;

    .line 46
    const-string v3, "SHA256withRSA"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->SIG_ALG:Ljava/lang/String;

    .line 49
    const-string v3, ".FBSIG"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FBSIG_SUFFIX:Ljava/lang/String;

    .line 52
    const-string v3, ".SF"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->SF_SUFFIX:Ljava/lang/String;

    .line 56
    const-string v3, "FBManifest.xml"

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FB_MANIFEST:Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    .line 65
    const-string v3, "com.facebook."

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->FACEBOOK_PACKAGE_PREFIX:Ljava/lang/String;

    .line 68
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->MAX_FBSIG_CANDIDATES:I

    .line 73
    iput-object p1, p0, Lcom/android/server/pm/FacebookPackageUtil;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/facebook.crt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v0, "certFile":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v2, "fis":Ljava/io/BufferedInputStream;
    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 81
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/pm/FacebookPackageUtil;->getAllowedPermissions()V

    .line 90
    .end local v0    # "certFile":Ljava/io/File;
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "fis":Ljava/io/BufferedInputStream;
    :goto_0
    return-void

    .line 83
    .restart local v0    # "certFile":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v0    # "certFile":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/pm/FacebookPackageUtil;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/FacebookPackageUtil;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method getAllowedPermissions()V
    .locals 5

    .prologue
    .line 261
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/FBPermissions.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v0, "fbPermissionFile":Ljava/io/File;
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .local v2, "permissionReader":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/pm/FacebookPackageUtil;->getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 266
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v1, :cond_0

    .line 267
    new-instance v3, Lcom/android/server/pm/FacebookPackageUtil$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/FacebookPackageUtil$1;-><init>(Lcom/android/server/pm/FacebookPackageUtil;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/FacebookPackageUtil;->parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 289
    .end local v0    # "fbPermissionFile":Ljava/io/File;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "permissionReader":Ljava/io/InputStreamReader;
    :goto_0
    return-void

    .line 284
    .restart local v0    # "fbPermissionFile":Ljava/io/File;
    .restart local v2    # "permissionReader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    .end local v0    # "fbPermissionFile":Ljava/io/File;
    .end local v2    # "permissionReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method getAttributeValue(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, "value":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v5, v4

    .line 255
    .end local v4    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 247
    .end local v5    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 248
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 249
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "attrValue":Ljava/lang/String;
    move-object v4, v2

    .line 248
    .end local v2    # "attrValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "attrName":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 255
    .end local v4    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p1, "input"    # Ljava/io/Reader;

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 232
    .local v1, "xmlFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 233
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "xmlFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getRequestedPermissions(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/FacebookPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v4, "requestedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/FacebookPermission;>;"
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v5, "sourceJar":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v6, "FBManifest.xml"

    invoke-virtual {v5, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 302
    .local v0, "manifestEntry":Ljava/util/jar/JarEntry;
    const/4 v3, 0x0

    .line 303
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 304
    .local v1, "manifestEntryStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 306
    .local v2, "manifestReader":Ljava/io/InputStreamReader;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 308
    new-instance v2, Ljava/io/InputStreamReader;

    .end local v2    # "manifestReader":Ljava/io/InputStreamReader;
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 309
    .restart local v2    # "manifestReader":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/FacebookPackageUtil;->getParserForInput(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 312
    :cond_0
    if-eqz v3, :cond_1

    .line 313
    new-instance v6, Lcom/android/server/pm/FacebookPackageUtil$2;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/FacebookPackageUtil$2;-><init>(Lcom/android/server/pm/FacebookPackageUtil;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/FacebookPackageUtil;->parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    .line 338
    .end local v0    # "manifestEntry":Ljava/util/jar/JarEntry;
    .end local v1    # "manifestEntryStream":Ljava/io/InputStream;
    .end local v2    # "manifestReader":Ljava/io/InputStreamReader;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "sourceJar":Ljava/util/jar/JarFile;
    :goto_0
    return-object v4

    .line 332
    .restart local v5    # "sourceJar":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    .end local v5    # "sourceJar":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method grantFacebookPermissions(Landroid/content/pm/PackageParser$Package;)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 365
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v9, "com.facebook."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 411
    :cond_0
    return-void

    .line 369
    :cond_1
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 370
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_0

    .line 373
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_3

    iget-object v3, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 376
    .local v3, "gp":Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/FacebookPackageUtil;->isFacebookApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/FacebookPackageUtil;->getRequestedPermissions(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;

    move-result-object v7

    .line 382
    .local v7, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/FacebookPermission;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 383
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 384
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/FacebookPermission;

    .line 385
    .local v2, "fbPerm":Lcom/android/server/pm/FacebookPermission;
    iget-object v5, v2, Lcom/android/server/pm/FacebookPermission;->name:Ljava/lang/String;

    .line 386
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/FacebookPackageUtil;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 388
    .local v1, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v1, :cond_4

    .line 383
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "fbPerm":Lcom/android/server/pm/FacebookPermission;
    .end local v3    # "gp":Lcom/android/server/pm/GrantedPermissions;
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/FacebookPermission;>;"
    :cond_3
    move-object v3, v6

    .line 373
    goto :goto_0

    .line 395
    .restart local v0    # "N":I
    .restart local v1    # "bp":Lcom/android/server/pm/BasePermission;
    .restart local v2    # "fbPerm":Lcom/android/server/pm/FacebookPermission;
    .restart local v3    # "gp":Lcom/android/server/pm/GrantedPermissions;
    .restart local v4    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/FacebookPermission;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/server/pm/FacebookPackageUtil;->allowedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, v2, Lcom/android/server/pm/FacebookPermission;->revoke:Z

    if-eqz v8, :cond_6

    .line 396
    :cond_5
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 397
    iget-boolean v8, v6, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-eqz v8, :cond_2

    .line 398
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v9, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->removeInts([I[I)[I

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    .line 405
    :cond_6
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    iget-boolean v8, v6, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-eqz v8, :cond_2

    .line 407
    iget-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v9, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2
.end method

.method isFacebookApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 97
    iget-object v10, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;

    if-nez v10, :cond_0

    move v2, v9

    .line 177
    :goto_0
    return v2

    .line 101
    :cond_0
    const/4 v2, 0x0

    .line 103
    .local v2, "isFacebookApp":Z
    :try_start_0
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 104
    .local v8, "sourceJarPath":Ljava/lang/String;
    new-instance v7, Ljava/util/jar/JarFile;

    invoke-direct {v7, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 106
    .local v7, "sourceJar":Ljava/util/jar/JarFile;
    const/4 v6, 0x0

    .line 107
    .local v6, "sfEntry":Ljava/util/jar/JarEntry;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v1, "fbSigEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    :try_start_1
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 111
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 113
    .local v3, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 116
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "name":Ljava/lang/String;
    const-string v10, "META-INF/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 122
    const-string v10, ".FBSIG"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 123
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    const-string v10, ".SF"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 127
    if-eqz v6, :cond_3

    .line 172
    :try_start_2
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v9

    goto :goto_0

    .line 131
    :cond_3
    move-object v6, v3

    goto :goto_1

    .line 135
    .end local v3    # "je":Ljava/util/jar/JarEntry;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_6

    .line 172
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v9

    goto :goto_0

    .line 139
    :cond_6
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_7

    .line 172
    :try_start_6
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v2, v9

    goto :goto_0

    .line 154
    :cond_7
    const/4 v5, 0x0

    .line 170
    .local v5, "reVerifyPackageIntegrity":Z
    :try_start_7
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/server/pm/FacebookPackageUtil;->verifyJarSignature(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 172
    :try_start_8
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 174
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "fbSigEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    .end local v5    # "reVerifyPackageIntegrity":Z
    .end local v6    # "sfEntry":Ljava/util/jar/JarEntry;
    .end local v7    # "sourceJar":Ljava/util/jar/JarFile;
    .end local v8    # "sourceJarPath":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 172
    .restart local v1    # "fbSigEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    .restart local v6    # "sfEntry":Ljava/util/jar/JarEntry;
    .restart local v7    # "sourceJar":Ljava/util/jar/JarFile;
    .restart local v8    # "sourceJarPath":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method parseTags(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "visitor"    # Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "type":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 347
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 348
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "tagName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {p2, p1}, Lcom/android/server/pm/FacebookPackageUtil$TagVisitor;->visit(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v0    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 357
    :cond_1
    return-void
.end method

.method verifyJarSignature(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)Z
    .locals 12
    .param p1, "file"    # Ljava/util/jar/JarFile;
    .param p2, "sfEntry"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "sigCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    const/4 v11, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    .local v1, "dataIn":Ljava/io/InputStream;
    :try_start_1
    const-string v10, "SHA256withRSA"

    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    .line 191
    .local v6, "sig":Ljava/security/Signature;
    iget-object v10, p0, Lcom/android/server/pm/FacebookPackageUtil;->mFacebookCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v10}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 193
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 194
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 195
    .local v3, "read":I
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v5, "sfOut":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_0

    .line 197
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "buffer":[B
    .end local v3    # "read":I
    .end local v5    # "sfOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "sig":Ljava/security/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    .end local v1    # "dataIn":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    :goto_1
    move v10, v11

    .line 219
    :goto_2
    return v10

    .line 199
    .restart local v0    # "buffer":[B
    .restart local v1    # "dataIn":Ljava/io/InputStream;
    .restart local v3    # "read":I
    .restart local v5    # "sfOut":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "sig":Ljava/security/Signature;
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 201
    .local v4, "sfBytes":[B
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 202
    .local v8, "sigCandidate":Ljava/util/jar/JarEntry;
    invoke-virtual {v6, v4}, Ljava/security/Signature;->update([B)V

    .line 203
    invoke-virtual {p1, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 205
    .local v9, "sigIn":Ljava/io/InputStream;
    :try_start_4
    invoke-static {v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 206
    .local v7, "sigBlock":[B
    invoke-virtual {v6, v7}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-eqz v10, :cond_1

    .line 207
    const/4 v10, 0x1

    .line 210
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 210
    :cond_1
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v7    # "sigBlock":[B
    :catchall_1
    move-exception v10

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 214
    .end local v8    # "sigCandidate":Ljava/util/jar/JarEntry;
    .end local v9    # "sigIn":Ljava/io/InputStream;
    :cond_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method
