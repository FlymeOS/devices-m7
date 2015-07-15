.class public Lcom/htc/customization/CustomizationAccLoader;
.super Lcom/htc/customization/BaseLoader;
.source "CustomizationAccLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;
    }
.end annotation


# static fields
.field private static final SYSTEM_TAG:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "CustomizationAccLoader"


# instance fields
.field private mAccSystemReader:Lcom/htc/customization/SystemReader;

.field private mAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/htc/customization/CustomizationAccLoader;->mConfigName:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/htc/customization/CustomizationAccLoader;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/customization/CustomizationAccLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CustomizationAccLoader;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/customization/CustomizationAccLoader;->mAppSettings:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/customization/CustomizationAccLoader;)Lcom/htc/customization/SystemReader;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CustomizationAccLoader;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/customization/CustomizationAccLoader;Lcom/htc/customization/SystemReader;)Lcom/htc/customization/SystemReader;
    .locals 0
    .param p0, "x0"    # Lcom/htc/customization/CustomizationAccLoader;
    .param p1, "x1"    # Lcom/htc/customization/SystemReader;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;

    return-object p1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationAccLoader;->mAppSettings:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/CustomizationAccLoader$AccXmlDataHandler;-><init>(Lcom/htc/customization/CustomizationAccLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/CustomizationAccLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/htc/customization/CustomizationAccLoader;->mAppSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/customization/HtcCustomizationReader;

    .line 76
    .local v0, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 77
    check-cast v1, Lcom/htc/customization/AccAppReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationAccLoader;->mAccSystemReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, v2}, Lcom/htc/customization/AccAppReader;->setDefaultReader(Lcom/htc/customization/SystemReader;)V

    .line 79
    :cond_0
    return-object v0
.end method

.method public getXmlFilenameWithFullPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/customization/CustomizationAccLoader;->CUSTOMIZATION_PATH_ACC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationAccLoader;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "fileFullPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/customization/CustomizationAccLoader;->CUSTOMIZATION_PATH_ACC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    return-object v1
.end method
