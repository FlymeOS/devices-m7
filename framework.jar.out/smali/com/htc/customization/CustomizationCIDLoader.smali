.class public Lcom/htc/customization/CustomizationCIDLoader;
.super Lcom/htc/customization/BaseLoader;
.source "CustomizationCIDLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomizationCIDLoader"


# instance fields
.field private mAppSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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
    .line 39
    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/htc/customization/CustomizationCIDLoader;->mConfigName:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/htc/customization/CustomizationCIDLoader;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/htc/customization/CustomizationCIDLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CustomizationCIDLoader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader;->mAppSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader;->mSystemSettings:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader;->mAppSettings:Ljava/util/HashMap;

    .line 47
    new-instance v0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;-><init>(Lcom/htc/customization/CustomizationCIDLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/CustomizationCIDLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader;->mAppSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/customization/HtcCustomizationReader;

    .line 198
    .local v0, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader;->mSystemSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    check-cast v0, Lcom/htc/customization/HtcCustomizationReader;

    .line 201
    .restart local v0    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    return-object v0
.end method

.method public getXmlFilenameWithFullPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/customization/CustomizationCIDLoader;->CUSTOMIZATION_PATH_CID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader;->mConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fileFullPath":Ljava/lang/String;
    const-string v1, "CustomizationCIDLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0
.end method
