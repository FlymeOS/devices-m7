.class public final Landroid/content/res/HtcConfiguration;
.super Ljava/lang/Object;
.source "HtcConfiguration.java"


# static fields
.field public static final ACTION_HTC_CONFIG_CHANGED:Ljava/lang/String; = "com.htc.intent.action.CONFIGURATION_CHANGED"

.field public static final CATEGORY_CONFIG_FONTSCALE:Ljava/lang/String; = "com.htc.intent.category.FONTSCALE"

.field public static final CATEGORY_CONFIG_SIMPLE:Ljava/lang/String; = "com.htc.intent.category.SIMPLE_MODE"

.field public static final CATEGORY_CONFIG_THEMEID:Ljava/lang/String; = "com.htc.intent.category.THEMEID"

.field public static final EXTRA_CONFIG_FONTSCALE:Ljava/lang/String; = "config.extra.FONTSCALE"

.field public static final EXTRA_CONFIG_SIMPLE:Ljava/lang/String; = "config.extra.SIMPLE_MODE"

.field private static final HTC_FONTSCALE_PROPERTY:Ljava/lang/String; = "persist.sys.htcfontscale"

.field private static final HTC_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.htcmode"

.field public static final HTC_MODE_UNDEFINED:I = 0x0

.field private static final HTC_PERMISSION_APP_DEFAULT:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field public static final HTC_SIMPLE_MODE:I = 0x1

.field private static final HTC_THEME_PROPERTY:Ljava/lang/String; = "persist.sys.htcthemeid"

.field private static final STRING_HTC_FONT_SCALE:Ljava/lang/String; = "htc_font_scale"

.field private static final STRING_HTC_SIMPLE_MODE:Ljava/lang/String; = "htc_simple_mode"

.field private static final TAG:Ljava/lang/String; = "HtcConfiguration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHtcFontscale(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 293
    if-nez p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 295
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 296
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v1

    .line 297
    .local v1, "htcfontscale":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 298
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 300
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkHtcFontscaleChanged(Landroid/content/Context;F)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontScale"    # F

    .prologue
    const/4 v1, 0x0

    .line 348
    if-nez p0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v0

    .line 350
    .local v0, "htcfontscale":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_0

    .line 351
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkHtcFontscaleChanged(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applied"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 323
    if-nez p0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v3

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 325
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 326
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v1

    .line 327
    .local v1, "htcfontscale":F
    if-nez p1, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 328
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getHtcFontscale()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, "value":F
    const-string/jumbo v3, "persist.sys.htcfontscale"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHtcFontscale(Landroid/content/Context;)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 219
    const/4 v3, 0x0

    .line 222
    .local v3, "value":F
    if-nez p0, :cond_0

    move v4, v3

    .line 238
    .end local v3    # "value":F
    .local v4, "value":F
    :goto_0
    return v4

    .line 223
    .end local v4    # "value":F
    .restart local v3    # "value":F
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 224
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "htc_font_scale"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 225
    cmpl-float v5, v3, v6

    if-nez v5, :cond_1

    .line 226
    const-string/jumbo v5, "persist.sys.htcfontscale"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 229
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 238
    .end local v3    # "value":F
    .restart local v4    # "value":F
    goto :goto_0

    .line 231
    .end local v4    # "value":F
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "value":F
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .line 233
    goto :goto_1

    .line 235
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHtcThemeId()I
    .locals 2

    .prologue
    .line 362
    const-string/jumbo v0, "persist.sys.htcthemeid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "enabled":Z
    if-nez p0, :cond_0

    .line 108
    :goto_0
    return v4

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 96
    .local v1, "resolver":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v4, v0

    .line 108
    goto :goto_0

    .line 98
    :pswitch_0
    const-string v5, "htc_simple_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, "result":I
    if-eq v2, v6, :cond_2

    .line 100
    if-ne v2, v3, :cond_1

    move v0, v3

    :goto_2
    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    .line 102
    :cond_2
    const-string/jumbo v5, "persist.sys.htcmode"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    move v0, v3

    .line 104
    :goto_3
    goto :goto_1

    :cond_3
    move v0, v4

    .line 102
    goto :goto_3

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSimpleMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 82
    const-string/jumbo v1, "persist.sys.htcmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setHtcFontscale(Landroid/content/Context;FF)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontscale"    # F
    .param p2, "applyfontscale"    # F

    .prologue
    .line 259
    const/4 v4, 0x0

    .line 260
    .local v4, "success":Z
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 277
    :goto_0
    return v5

    .line 261
    :cond_0
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->getHtcFontscale(Landroid/content/Context;)F

    move-result v1

    .line 263
    .local v1, "org_fontscale":F
    cmpl-float v5, v1, p1

    if-eqz v5, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 265
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "htc_font_scale"

    invoke-static {v2, v5, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v3

    .line 267
    .local v3, "result":Z
    if-eqz v3, :cond_1

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_1

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.htc.intent.category.FONTSCALE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v5, "config.extra.FONTSCALE"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    const-string v5, "HtcConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setHtcFontscale to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v4, 0x1

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Z
    :cond_1
    move v5, v4

    .line 277
    goto :goto_0
.end method

.method public static setHtcThemeId(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    const/4 v2, 0x0

    .line 380
    if-nez p0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 382
    :cond_1
    invoke-static {}, Landroid/content/res/HtcConfiguration;->getHtcThemeId()I

    move-result v1

    .line 383
    .local v1, "originalThemeId":I
    if-eq v1, p1, :cond_0

    .line 384
    const-string/jumbo v3, "persist.sys.htcthemeid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/content/res/HtcConfiguration;->getHtcThemeId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.htc.intent.category.THEMEID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    const-string v2, "HtcConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHtcThemeId to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setMode(Landroid/content/Context;IZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "success":Z
    if-nez p0, :cond_0

    .line 147
    :goto_0
    return v4

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 129
    .local v2, "resolver":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v3

    .line 147
    goto :goto_0

    .line 131
    :pswitch_0
    invoke-static {p0, p1}, Landroid/content/res/HtcConfiguration;->getMode(Landroid/content/Context;I)Z

    move-result v1

    .line 132
    .local v1, "org_enabled":Z
    if-eq p2, v1, :cond_1

    .line 133
    const-string v5, "htc_simple_mode"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 134
    if-eqz v3, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.htc.intent.category.SIMPLE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v4, "config.extra.SIMPLE_MODE"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v4, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    const-string v4, "HtcConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode HTC_SIMPLE_MODE to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static setSimpleMode(Landroid/content/Context;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    if-nez p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v5

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 169
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "persist.sys.htcmode"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "htcmode":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    if-eq p1, v3, :cond_0

    .line 172
    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x1

    .line 173
    :goto_2
    const-string/jumbo v3, "persist.sys.htcmode"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "htc_simple_mode"

    if-eqz p1, :cond_4

    move v3, v4

    :goto_3
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    invoke-static {}, Landroid/content/res/HtcConfiguration;->isSimpleMode()Z

    move-result v3

    if-ne p1, v3, :cond_0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.htc.intent.category.SIMPLE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v3, "config.extra.SIMPLE_MODE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v3, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 183
    const-string v3, "HtcConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSimpleMode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 184
    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    move v3, v5

    .line 170
    goto :goto_1

    .line 172
    :cond_3
    and-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_4
    move v3, v5

    .line 174
    goto :goto_3
.end method
