.class public Lcom/htc/lib2/configuration/HtcWrapConfiguration;
.super Ljava/lang/Object;
.source "HtcWrapConfiguration.java"


# static fields
.field public static final ACTION_HTC_CONFIG_CHANGED:Ljava/lang/String;

.field public static final CATEGORY_CONFIG_FONTSCALE:Ljava/lang/String;

.field public static final CATEGORY_CONFIG_SIMPLE:Ljava/lang/String;

.field public static final EXTRA_CONFIG_FONTSCALE:Ljava/lang/String;

.field public static final EXTRA_CONFIG_SIMPLE:Ljava/lang/String;

.field private static s_applyHtcFontscale:Ljava/lang/reflect/Method;

.field private static s_checkHtcFontscaleChanged:Ljava/lang/reflect/Method;

.field private static s_checkHtcFontscaleChanged2:Ljava/lang/reflect/Method;

.field private static s_getHtcFontscale:Ljava/lang/reflect/Method;

.field private static s_getHtcFontscale2:Ljava/lang/reflect/Method;

.field private static s_isSimpleMode:Ljava/lang/reflect/Method;

.field private static s_setHtcFontscale:Ljava/lang/reflect/Method;

.field private static s_setSimpleMode:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_isSimpleMode:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_setSimpleMode:Ljava/lang/reflect/Method;

    .line 64
    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_applyHtcFontscale:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_checkHtcFontscaleChanged:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_checkHtcFontscaleChanged2:Ljava/lang/reflect/Method;

    .line 65
    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale2:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_setHtcFontscale:Ljava/lang/reflect/Method;

    .line 68
    const-string v1, ""

    const-string v2, ""

    .line 69
    const-string v3, ""

    const-string v4, ""

    .line 70
    const-string v5, ""

    .line 73
    :try_start_0
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getHDKBaseVersion()F

    move-result v0

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    .line 75
    const-string v0, "android.content.res.HtcConfiguration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 77
    const-string v0, "isSimpleMode"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_isSimpleMode:Ljava/lang/reflect/Method;

    .line 78
    const-string v0, "setSimpleMode"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_setSimpleMode:Ljava/lang/reflect/Method;

    .line 79
    const-string v0, "applyHtcFontscale"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_applyHtcFontscale:Ljava/lang/reflect/Method;

    .line 80
    const-string v0, "checkHtcFontscaleChanged"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_checkHtcFontscaleChanged:Ljava/lang/reflect/Method;

    .line 81
    const-string v0, "checkHtcFontscaleChanged"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_checkHtcFontscaleChanged2:Ljava/lang/reflect/Method;

    .line 82
    const-string v0, "getHtcFontscale"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale:Ljava/lang/reflect/Method;

    .line 83
    const-string v0, "getHtcFontscale"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale2:Ljava/lang/reflect/Method;

    .line 84
    const-string v0, "setHtcFontscale"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_setHtcFontscale:Ljava/lang/reflect/Method;

    .line 86
    const-string v0, "ACTION_HTC_CONFIG_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    :try_start_1
    const-string v1, "EXTRA_CONFIG_SIMPLE"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    .line 88
    :try_start_2
    const-string v2, "CATEGORY_CONFIG_SIMPLE"

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_6

    .line 89
    :try_start_3
    const-string v3, "EXTRA_CONFIG_FONTSCALE"

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7

    .line 90
    :try_start_4
    const-string v4, "CATEGORY_CONFIG_FONTSCALE"

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_0
    move-object v5, v4

    .line 104
    :goto_1
    const-string v4, ""

    if-eq v0, v4, :cond_2

    :goto_2
    sput-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->ACTION_HTC_CONFIG_CHANGED:Ljava/lang/String;

    .line 106
    const-string v0, ""

    if-eq v1, v0, :cond_3

    :goto_3
    sput-object v1, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->EXTRA_CONFIG_SIMPLE:Ljava/lang/String;

    .line 108
    const-string v0, ""

    if-eq v2, v0, :cond_4

    :goto_4
    sput-object v2, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->CATEGORY_CONFIG_SIMPLE:Ljava/lang/String;

    .line 110
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "config.extra.FONTSCALE"

    :cond_0
    sput-object v3, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->EXTRA_CONFIG_FONTSCALE:Ljava/lang/String;

    .line 112
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v5, "com.htc.intent.category.FONTSCALE"

    :cond_1
    sput-object v5, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->CATEGORY_CONFIG_FONTSCALE:Ljava/lang/String;

    .line 114
    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 93
    :goto_5
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 95
    :goto_6
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 96
    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 97
    :goto_7
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 98
    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 99
    :goto_8
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 100
    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    .line 101
    :goto_9
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 104
    :cond_2
    const-string v0, "com.htc.intent.action.CONFIGURATION_CHANGED"

    goto :goto_2

    .line 106
    :cond_3
    const-string v1, "config.extra.SIMPLE_MODE"

    goto :goto_3

    .line 108
    :cond_4
    const-string v2, "com.htc.intent.category.SIMPLE_MODE"

    goto :goto_4

    .line 100
    :catch_5
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_9

    :catch_6
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_9

    :catch_7
    move-exception v3

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_9

    :catch_8
    move-exception v4

    goto :goto_9

    .line 98
    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_8

    :catch_a
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_8

    :catch_b
    move-exception v3

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_8

    :catch_c
    move-exception v4

    goto :goto_8

    .line 96
    :catch_d
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_7

    :catch_e
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_7

    :catch_f
    move-exception v3

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_7

    :catch_10
    move-exception v4

    goto :goto_7

    .line 94
    :catch_11
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_6

    :catch_12
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_6

    :catch_13
    move-exception v3

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_6

    :catch_14
    move-exception v4

    goto :goto_6

    .line 92
    :catch_15
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto/16 :goto_5

    :catch_16
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    goto/16 :goto_5

    :catch_17
    move-exception v3

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    goto/16 :goto_5

    :catch_18
    move-exception v4

    goto/16 :goto_5

    :cond_5
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_0
.end method

.method public static applyHtcFontscale(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    .line 293
    if-nez p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 296
    invoke-static {p0}, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v3

    .line 297
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 298
    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 299
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkHtcFontscaleChanged(Landroid/content/Context;F)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    .line 354
    if-nez p0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-static {p0}, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v1

    .line 356
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getHtcFontscale(Landroid/content/Context;)F
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 249
    .line 250
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getHDKBaseVersion()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 251
    if-nez p0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    const-string v1, "htc_font_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 254
    cmpl-float v1, v0, v2

    if-nez v1, :cond_0

    .line 256
    :try_start_0
    sget-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale2:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 257
    sget-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    :try_start_1
    sget-object v0, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 263
    sget-object v1, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->s_getHtcFontscale2:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_4
    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 275
    const-string v2, "htc_font_scale"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method
