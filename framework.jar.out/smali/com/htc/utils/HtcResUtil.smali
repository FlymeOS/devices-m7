.class public Lcom/htc/utils/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final ALL_CAPS_LOCALE:[Ljava/lang/String;

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcResUtil"

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static mRatio:F

.field private static mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    .line 332
    sput-object v3, Lcom/htc/utils/HtcResUtil;->mTypedValue:Landroid/util/TypedValue;

    .line 333
    sput-object v3, Lcom/htc/utils/HtcResUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 334
    const/4 v0, 0x0

    sput v0, Lcom/htc/utils/HtcResUtil;->mRatio:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimen(IILandroid/content/res/Resources;)F
    .locals 6
    .param p0, "resID"    # I
    .param p1, "targetDensity"    # I
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 342
    const/high16 v2, -0x40800000    # -1.0f

    .line 343
    .local v2, "result":F
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v2

    .line 367
    .end local v2    # "result":F
    .local v3, "result":F
    :goto_0
    return v3

    .line 347
    .end local v3    # "result":F
    .restart local v2    # "result":F
    :cond_1
    const/4 v4, 0x0

    sget v5, Lcom/htc/utils/HtcResUtil;->mRatio:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 348
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->xdpi:F

    .line 349
    .local v1, "currentDensity":F
    const v4, 0x20d000b

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 351
    .local v0, "baseDensity":I
    int-to-float v4, v0

    div-float v4, v1, v4

    sput v4, Lcom/htc/utils/HtcResUtil;->mRatio:F

    .line 354
    .end local v0    # "baseDensity":I
    .end local v1    # "currentDensity":F
    :cond_2
    sget-object v4, Lcom/htc/utils/HtcResUtil;->mTypedValue:Landroid/util/TypedValue;

    if-nez v4, :cond_3

    .line 355
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    sput-object v4, Lcom/htc/utils/HtcResUtil;->mTypedValue:Landroid/util/TypedValue;

    .line 358
    :cond_3
    sget-object v4, Lcom/htc/utils/HtcResUtil;->mTypedValue:Landroid/util/TypedValue;

    const/4 v5, 0x0

    invoke-virtual {p2, p0, p1, v4, v5}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 360
    sget-object v4, Lcom/htc/utils/HtcResUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v4, :cond_4

    .line 361
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v4, Lcom/htc/utils/HtcResUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 364
    :cond_4
    sget-object v4, Lcom/htc/utils/HtcResUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    int-to-float v5, p1

    iput v5, v4, Landroid/util/DisplayMetrics;->density:F

    .line 365
    sget-object v4, Lcom/htc/utils/HtcResUtil;->mTypedValue:Landroid/util/TypedValue;

    sget-object v5, Lcom/htc/utils/HtcResUtil;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    sget v5, Lcom/htc/utils/HtcResUtil;->mRatio:F

    mul-float v2, v4, v5

    move v3, v2

    .line 367
    .end local v2    # "result":F
    .restart local v3    # "result":F
    goto :goto_0
.end method

.method public static getDimensionsInDifferentFontSizeConfig(Landroid/content/Context;I)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 313
    const/4 v7, 0x5

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 314
    .local v0, "FONT_SCALE_LEVELS":[F
    array-length v7, v0

    new-array v3, v7, [I

    .line 316
    .local v3, "dimensions":[I
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 317
    .local v1, "am":Landroid/content/res/AssetManager;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 318
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 319
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 320
    .local v2, "config":Landroid/content/res/Configuration;
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v1, v5, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 321
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 325
    aget v7, v0, v4

    iput v7, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 326
    invoke-virtual {v6, v2, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 327
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v3, v4

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-object v3

    .line 313
    nop

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fb9999a    # 1.45f
    .end array-data
.end method

.method private static getPrivateResID(Ljava/lang/String;)I
    .locals 19
    .param p0, "res"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v17, "\\."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "TokenList":[Ljava/lang/String;
    const/16 v17, 0x3

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 64
    const/16 v17, 0x0

    .line 90
    :goto_0
    return v17

    .line 66
    :cond_0
    const-string v17, "R."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 67
    .local v16, "nRstart":I
    const/16 v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 68
    const/16 v17, 0x0

    goto :goto_0

    .line 70
    :cond_1
    const/16 v17, 0x0

    add-int/lit8 v18, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "ClassName":Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v4, v6, v17

    .line 72
    .local v4, "ResName":Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    aget-object v5, v6, v17

    .line 75
    .local v5, "ResType":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 76
    .local v8, "c":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v14

    .line 78
    .local v14, "internalclasses":[Ljava/lang/Class;
    move-object v7, v14

    .local v7, "arr$":[Ljava/lang/Class;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v15, :cond_3

    aget-object v11, v7, v12

    .line 79
    .local v11, "i":Ljava/lang/Class;
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 80
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 81
    .local v9, "declaredField":Ljava/lang/reflect/Field;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 82
    .local v13, "id":Ljava/lang/Integer;
    const/4 v14, 0x0

    .line 83
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    goto :goto_0

    .line 78
    .end local v9    # "declaredField":Ljava/lang/reflect/Field;
    .end local v13    # "id":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 86
    .end local v7    # "arr$":[Ljava/lang/Class;
    .end local v8    # "c":Ljava/lang/Class;
    .end local v11    # "i":Ljava/lang/Class;
    .end local v12    # "i$":I
    .end local v14    # "internalclasses":[Ljava/lang/Class;
    .end local v15    # "len$":I
    :catch_0
    move-exception v10

    .line 88
    .local v10, "e":Ljava/lang/Exception;
    const-class v17, Lcom/htc/utils/HtcResUtil;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    if-eqz p0, :cond_6

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 245
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_5

    .line 246
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 247
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_4

    .line 248
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 249
    .local v5, "locale":Ljava/util/Locale;
    if-eqz v5, :cond_3

    .line 250
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 252
    sget-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v0, v2

    .line 253
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 254
    const/4 v8, 0x1

    .line 273
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "i$":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "tmp":Ljava/lang/String;
    :goto_1
    return v8

    .line 252
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "i$":I
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "tmp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_1
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get language."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 261
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get locale."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 264
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_4
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get configuration."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 267
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_5
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get res."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string v8, "HtcResUtil"

    const-string v9, "Context is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/utils/HtcResUtil;->setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;Z)V

    .line 156
    return-void
.end method

.method public static setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "textPaint"    # Landroid/text/TextPaint;
    .param p3, "enableColorStateList"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "textPaint can NOT be null!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_0
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "appearance":Landroid/content/res/TypedArray;
    if-eqz p3, :cond_1

    .line 117
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 119
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 126
    .local v4, "ts":I
    if-eqz v4, :cond_2

    .line 127
    int-to-float v6, v4

    invoke-virtual {p2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    :cond_2
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "familyName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 137
    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 140
    .local v3, "styleIndex":I
    invoke-static {v2, v5, v3, p2}, Lcom/htc/utils/HtcResUtil;->setTypefaceFromAttrs(Ljava/lang/String;IILandroid/text/TextPaint;)V

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void
.end method

.method private static setTypeface(Landroid/graphics/Typeface;ILandroid/text/TextPaint;)V
    .locals 5
    .param p0, "tf"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 198
    if-lez p1, :cond_4

    .line 199
    if-nez p0, :cond_1

    .line 200
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 205
    :goto_0
    invoke-virtual {p2, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 208
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p1, v4

    .line 209
    .local v0, "need":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 210
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 216
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 202
    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 207
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 210
    goto :goto_2

    .line 212
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 213
    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 214
    invoke-virtual {p2, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method

.method private static setTypefaceFromAttrs(Ljava/lang/String;IILandroid/text/TextPaint;)V
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I
    .param p3, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p0, :cond_0

    .line 165
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_1
    invoke-static {v0, p2, p3}, Lcom/htc/utils/HtcResUtil;->setTypeface(Landroid/graphics/Typeface;ILandroid/text/TextPaint;)V

    goto :goto_0

    .line 173
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 174
    goto :goto_1

    .line 177
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 178
    goto :goto_1

    .line 181
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toUpperCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 286
    const/4 p1, 0x0

    .line 288
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
