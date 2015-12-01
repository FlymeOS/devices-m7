.class public Lcom/htc/lib0/HDKLib0Util;
.super Ljava/lang/Object;
.source "HDKLib0Util.java"


# static fields
.field private static final HDK_BASE_VERSION:F

.field private static final HDK_LIB3_SUPPORTED_TYPE:I

.field private static s_getHDKBaseVersion:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 20
    sput-object v0, Lcom/htc/lib0/HDKLib0Util;->s_getHDKBaseVersion:Ljava/lang/reflect/Method;

    .line 66
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "getHDKBaseVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib0/HDKLib0Util;->s_getHDKBaseVersion:Ljava/lang/reflect/Method;

    .line 70
    sget-object v0, Lcom/htc/lib0/HDKLib0Util;->s_getHDKBaseVersion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getSenseVersion()F

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 71
    sget-object v0, Lcom/htc/lib0/HDKLib0Util;->s_getHDKBaseVersion:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 73
    cmpl-float v0, v2, v3

    if-lez v0, :cond_2

    .line 74
    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    move v0, v2

    :goto_1
    move v3, v0

    move v4, v1

    .line 103
    :cond_0
    :goto_2
    sput v4, Lcom/htc/lib0/HDKLib0Util;->HDK_LIB3_SUPPORTED_TYPE:I

    .line 104
    sput v3, Lcom/htc/lib0/HDKLib0Util;->HDK_BASE_VERSION:F

    .line 105
    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v4

    .line 78
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "HDKLib0Util"

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-boolean v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v1, "HDKLib0Util"

    const-string v2, "IllegalAccessException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-boolean v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string v1, "HDKLib0Util"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 96
    :catch_3
    move-exception v0

    .line 97
    const-string v1, "HDKLib0Util"

    const-string v2, "InvocationTargetException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v3

    move v1, v4

    goto :goto_1
.end method

.method public static getHDKBaseVersion()F
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/htc/lib0/HDKLib0Util;->HDK_BASE_VERSION:F

    return v0
.end method

.method private static getSenseVersion()F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v2, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;

    invoke-direct {v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;-><init>()V

    .line 109
    const/4 v0, 0x0

    .line 110
    if-eqz v2, :cond_0

    .line 111
    const-string v0, "system"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 117
    :cond_0
    if-eqz v0, :cond_3

    .line 118
    :try_start_0
    const-string v2, "sense_version"

    const-string v3, "0.0"

    invoke-virtual {v0, v2, v3}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 127
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 119
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    sget-boolean v2, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "HDKLib0Util"

    const-string v3, "Sense version parse failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isHDKLib3SupportedInDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    sget v0, Lcom/htc/lib0/HDKLib0Util;->HDK_LIB3_SUPPORTED_TYPE:I

    return v0
.end method
