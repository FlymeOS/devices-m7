.class public Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper "

.field private static mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

.field private mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 64
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 75
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 79
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    if-nez v0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->registerReceiver()V

    .line 84
    const-string v0, "WirelessDisplayHelper "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WirelessDisplayManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    return-object v0
.end method

.method public static getIPLong(Ljava/lang/String;)J
    .locals 11

    .prologue
    const-wide/16 v0, -0x1

    .line 178
    .line 180
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 182
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 183
    const/16 v3, 0x20

    .line 184
    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v5, v3

    move-wide v2, v0

    :goto_0
    if-ltz v4, :cond_3

    .line 186
    const-string v6, "WirelessDisplayHelper "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " addrArray("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v8, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v5, v5, -0x8

    .line 192
    :try_start_0
    aget-object v6, v8, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 203
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_0

    const-wide/16 v9, 0x100

    cmp-long v9, v6, v9

    if-ltz v9, :cond_2

    .line 210
    :cond_0
    :goto_1
    const-string v2, "WirelessDisplayHelper "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "long value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    return-wide v0

    .line 194
    :catch_0
    move-exception v2

    .line 196
    const-string v3, "WirelessDisplayHelper "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " addrArray("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v8, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error IP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 208
    :cond_2
    shl-long/2addr v6, v5

    add-long/2addr v6, v2

    .line 184
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move-wide v2, v6

    goto/16 :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public static getReadyDongle(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static getReadyDongle(Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return v0

    .line 310
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->usedDongleFound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[getReadyDongle]usedDongleFound() return true"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[getReadyDongle]usedDongleFound() return false"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    const-string v2, "WirelessDisplayHelper "

    const-string v3, "[registerReceiver] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 334
    :try_start_0
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 335
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getConnectedDongleIP()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    const-string v2, "WirelessDisplayHelper "

    const-string v3, "[registerReceiver] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    .locals 3

    .prologue
    .line 270
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getInstance()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 272
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->init(Landroid/content/Context;)Z

    move-result v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[getWirelessDisplayManagerReflection] init fail"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 278
    :cond_0
    const-string v0, "WirelessDisplayHelper "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getWirelessDisplayManagerReflection] return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    return-object v0
.end method

.method public static final isInMirrorMode(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getMirrorDisplayStatus()Z

    move-result v0

    goto :goto_0
.end method

.method private static isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 534
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    .line 537
    :cond_0
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[isWirelessDisplayManagerNull][mgr is null or not inited]"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final pauseMirror(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 420
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[pauseMirror]"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 422
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 426
    const-string v1, "WirelessDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pauseMirror] nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_DISPLAY_STATE_CHANGED_ACTION()Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$1;)V

    iput-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 226
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const-string v3, "com.htc.permission.APP_MEDIA"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[WirelessDisplayHelper] RegisterReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "Cant not get MIRROR_DISPLAY_STATE_CHANGED_ACTION intent define."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    iput-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 234
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[registerReceiver] NullPointerException caught!"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final resumeMirror(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 401
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[resumeMirror]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 408
    const-string v1, "WirelessDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resumeMirror] nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 568
    if-nez p0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 571
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->setDLNAPreloadEnable(Z)Z

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setDefaultDongleMirrorEnabled(Landroid/content/Context;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 358
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->usedDongleFound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[setDefaultDongleMirrorEnabled]usedDongleFound() return true"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mirrorModeStartStop(Z)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_1
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[setDefaultDongleMirrorEnabled]usedDongleFound() return false"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final shouldPlayOnTV(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 459
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[shouldPlayOnTV]"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 461
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Z

    move-result v1

    .line 465
    if-eqz v1, :cond_0

    .line 468
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->popDialog()Z

    move-result v0

    goto :goto_0
.end method

.method public static final startMirror(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 382
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[startMirror]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 387
    :cond_0
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[startMirror][mirrorNow]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mirrorNow()V

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final stopMirror(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 440
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[stopMirror]"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mirrorModeStartStop(Z)Z

    move-result v0

    .line 446
    const-string v1, "WirelessDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopMirror] bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[WirelessDisplayHelper] UnregisterReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "WirelessDisplayHelper "

    const-string v1, "[WirelessDisplayHelper] Dont need to unregisterReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getMirrorModeState()I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_DISABLED()I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getMirrorModeState()I

    move-result v0

    goto :goto_0
.end method

.method public final isInMirrorMode()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getMirrorDisplayStatus()Z

    move-result v0

    goto :goto_0
.end method

.method public isMirrorRenderer(J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getMirrorDisplayStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 150
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 151
    const-string v1, "WirelessDisplayHelper "

    const-string v2, "[isMirrorRenderer] Couldn\'t get dongle IP from wds."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    const-string v2, "WirelessDisplayHelper "

    const-string v3, "[isMirrorRenderer] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 153
    :cond_2
    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    .line 154
    :try_start_1
    const-string v3, "WirelessDisplayHelper "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMirrorRenderer] Dongle found with matching IP, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    const-string v3, "WirelessDisplayHelper "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMirrorRenderer] In mirror mode, not mataching with dongle IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderer IP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->unregisterReceiver()V

    .line 257
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 258
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mReceiver:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 259
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method public setDLNAPreloadFlag(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 550
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManagerReflection(Landroid/content/Context;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v1

    .line 553
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->setDLNAPreloadEnable(Z)Z

    .line 556
    const/4 v0, 0x1

    goto :goto_0
.end method
