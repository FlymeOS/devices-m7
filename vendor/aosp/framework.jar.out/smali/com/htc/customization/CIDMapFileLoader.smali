.class public Lcom/htc/customization/CIDMapFileLoader;
.super Lcom/htc/customization/BaseLoader;
.source "CIDMapFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default.xml"

.field private static final TAG:Ljava/lang/String; = "CIDMapFileReader"


# instance fields
.field private mProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/customization/BaseLoader;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/htc/customization/CIDMapFileLoader;->mConfigName:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/htc/customization/CIDMapFileLoader;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/customization/CIDMapFileLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/htc/customization/CIDMapFileLoader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    .line 47
    new-instance v0, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;

    invoke-direct {v0, p0}, Lcom/htc/customization/CIDMapFileLoader$XmlContentHandler;-><init>(Lcom/htc/customization/CIDMapFileLoader;)V

    invoke-virtual {p0, v0}, Lcom/htc/customization/CIDMapFileLoader;->parseConfig(Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCustomizationConfig(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLWithCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/htc/customization/CIDMapFileLoader;->mProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "xml":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 88
    const-string v0, "default.xml"

    .line 90
    :cond_0
    return-object v0
.end method
