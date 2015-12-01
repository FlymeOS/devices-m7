.class public Lcom/htc/lib3/medialinksharedmodule/HDKLib3Util;
.super Ljava/lang/Object;
.source "HDKLib3Util.java"


# static fields
.field private static final CLASS_HTCSERVICE:Ljava/lang/String; = "com.htc.service.HtcService"

.field public static final FULLY_SUPPORT:I = 0x0

.field public static final NOT_FULLY_SUPPORT:I = 0x1

.field public static final NOT_HTC_DEVICE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HDKLib3Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceSupportLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "18.1"

    return-object v0
.end method

.method public static getHDKLib3RequiredSupportLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "18.1"

    return-object v0
.end method

.method public static isHDKLib3SupportedInDevice()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 62
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-direct {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;-><init>()V

    .line 63
    const-string v2, "com.htc.service.HtcService"

    invoke-virtual {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->loadClass(Ljava/lang/String;)V

    .line 64
    const-string v2, "WIRELESS_DISPLAY_SERVICE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 70
    :cond_0
    const-string v1, "com.htc.htcdlnamiddlelayer"

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/HDKLib3Util;->isPackageExists(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 71
    const-string v1, "HDKLib3Util"

    const-string v2, "[isHDKLib3SupportedInDevice] DLNA stack found."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    if-ne v0, v0, :cond_3

    .line 78
    const/4 v0, 0x0

    .line 82
    :cond_1
    :goto_1
    return v0

    .line 74
    :cond_2
    const-string v1, "HDKLib3Util"

    const-string v2, "[isHDKLib3SupportedInDevice] DLNA stack not found."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    if-nez v0, :cond_1

    goto :goto_1
.end method

.method private static isPackageExists(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/HDKLib3Util;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 120
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :cond_1
    return v2
.end method
