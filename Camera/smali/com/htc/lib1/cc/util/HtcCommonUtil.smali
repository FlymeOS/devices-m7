.class public Lcom/htc/lib1/cc/util/HtcCommonUtil;
.super Ljava/lang/Object;
.source "HtcCommonUtil.java"


# static fields
.field private static final DEFAULTTHEMES:[[I

.field private static final OBSERVABLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/lib1/cc/util/c;",
            ">;"
        }
    .end annotation
.end field

.field private static mThemes:[[I

.field private static s_getHtcThemeId:Ljava/lang/reflect/Method;

.field private static s_setHtcThemeId:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->OBSERVABLES:Ljava/util/Map;

    .line 88
    new-array v0, v4, [[I

    const/4 v2, 0x5

    new-array v2, v2, [I

    sget v3, Lcom/htc/lib1/cc/k;->HtcDeviceDefault:I

    aput v3, v2, v5

    sget v3, Lcom/htc/lib1/cc/k;->HtcDeviceDefault_CategoryOne:I

    aput v3, v2, v4

    sget v3, Lcom/htc/lib1/cc/k;->HtcDeviceDefault_CategoryTwo:I

    aput v3, v2, v6

    const/4 v3, 0x3

    sget v4, Lcom/htc/lib1/cc/k;->HtcDeviceDefault_CategoryThree:I

    aput v4, v2, v3

    const/4 v3, 0x4

    sget v4, Lcom/htc/lib1/cc/k;->HtcDeviceDefault_CategoryFour:I

    aput v4, v2, v3

    aput-object v2, v0, v5

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->DEFAULTTHEMES:[[I

    move-object v0, v1

    .line 98
    check-cast v0, [[I

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    .line 100
    sput-object v1, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_getHtcThemeId:Ljava/lang/reflect/Method;

    .line 102
    sput-object v1, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_setHtcThemeId:Ljava/lang/reflect/Method;

    .line 107
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_getHtcThemeId:Ljava/lang/reflect/Method;

    .line 110
    const-string v0, "android.content.res.HtcConfiguration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    const-string v1, "setHtcThemeId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_setHtcThemeId:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 115
    const-string v0, "HtcCommonUtil"

    const-string v1, "Class not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 118
    const-string v0, "HtcCommonUtil"

    const-string v1, "No such method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 121
    const-string v0, "HtcCommonUtil"

    const-string v1, "Illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addObserver(ILjava/util/Observer;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->OBSERVABLES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/util/c;

    .line 266
    if-nez v0, :cond_0

    .line 267
    sget-object v1, Lcom/htc/lib1/cc/util/HtcCommonUtil;->OBSERVABLES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v0, Lcom/htc/lib1/cc/util/c;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/htc/lib1/cc/util/c;-><init>(Lcom/htc/lib1/cc/util/b;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/util/c;->addObserver(Ljava/util/Observer;)V

    .line 270
    return-void
.end method

.method private static generateThemes(Landroid/content/Context;)[[I
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, -0x1

    .line 205
    if-nez p0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 208
    const/4 v0, 0x0

    check-cast v0, [[I

    .line 209
    sget v2, Lcom/htc/lib1/cc/a;->multipleColorThemes:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 211
    if-eqz v5, :cond_7

    move-object v2, v0

    move v0, v1

    .line 213
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 214
    if-nez v2, :cond_1

    .line 215
    if-nez v2, :cond_1

    .line 216
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [[I

    .line 217
    :cond_1
    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 218
    if-eq v3, v10, :cond_5

    .line 219
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 220
    if-eqz v6, :cond_4

    move v3, v1

    .line 222
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 223
    aget-object v7, v2, v0

    if-nez v7, :cond_2

    .line 224
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    new-array v7, v7, [I

    aput-object v7, v2, v0

    .line 225
    :cond_2
    invoke-virtual {v6, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 226
    if-eq v7, v10, :cond_3

    .line 227
    aget-object v8, v2, v0

    aput v7, v8, v3

    .line 222
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    :cond_3
    const-string v7, "HtcCommonUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get resource base on id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    if-nez v2, :cond_8

    .line 237
    const-string v0, "HtcCommonUtil"

    const-string v1, "Can\'t find resources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_7
    const-string v0, "HtcCommonUtil"

    const-string v1, "Can\'t parse the typedArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->DEFAULTTHEMES:[[I

    :cond_8
    return-object v2
.end method

.method public static getHtcThemeId(Landroid/content/Context;I)I
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 168
    .line 171
    :try_start_0
    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    if-nez v0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/htc/lib1/cc/util/HtcCommonUtil;->generateThemes(Landroid/content/Context;)[[I

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    .line 175
    :cond_0
    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_getHtcThemeId:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 176
    if-ne p1, v3, :cond_1

    .line 201
    :goto_0
    return v1

    .line 178
    :cond_1
    if-ltz p1, :cond_2

    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    :cond_2
    move p1, v1

    .line 180
    :cond_3
    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aget v1, v0, p1

    goto :goto_0

    .line 183
    :cond_4
    sget-object v0, Lcom/htc/lib1/cc/util/HtcCommonUtil;->s_getHtcThemeId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "persist.sys.htcthemeid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    if-ltz v0, :cond_5

    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_6

    :cond_5
    move v0, v1

    .line 186
    :cond_6
    if-ne p1, v3, :cond_7

    move v1, v0

    .line 187
    goto :goto_0

    .line 188
    :cond_7
    if-ltz p1, :cond_8

    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_9

    :cond_8
    move p1, v1

    .line 190
    :cond_9
    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->mThemes:[[I

    aget-object v0, v2, v0

    aget v2, v0, p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, p1

    .line 196
    :goto_1
    if-ne v2, v3, :cond_c

    .line 197
    if-ltz v0, :cond_a

    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->DEFAULTTHEMES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_b

    :cond_a
    move v0, v1

    .line 199
    :cond_b
    sget-object v2, Lcom/htc/lib1/cc/util/HtcCommonUtil;->DEFAULTTHEMES:[[I

    aget-object v1, v2, v1

    aget v1, v1, v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v0, "HtcCommonUtil"

    const-string v2, "Method Invoke failed with InvocationTargetException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    move v2, v3

    .line 195
    goto :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    const-string v0, "HtcCommonUtil"

    const-string v2, "Method Invoke failed with IllegalAccessException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    move v2, v3

    goto :goto_1

    :cond_c
    move v1, v2

    .line 201
    goto :goto_0
.end method
