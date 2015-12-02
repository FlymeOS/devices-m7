.class public Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
.super Ljava/lang/Object;
.source "WirelessDisplayManagerReflection.java"


# static fields
.field private static final CLASS_DONGLEINFO:Ljava/lang/String; = "com.htc.service.DongleInfo"

.field private static final CLASS_HTCSERVICE:Ljava/lang/String; = "com.htc.service.HtcService"

.field private static final CLASS_WIRELESSDISPLAYMANAGER:Ljava/lang/String; = "com.htc.service.WirelessDisplayManager"

.field private static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayManagerReflection"

.field private static mInited:Z

.field private static mWirelessDisplayManager:Ljava/lang/Object;

.field private static mWirelessDisplayManagerReflectionThis:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

.field private static mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

.field private static mWirelessDisplayServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    .line 22
    sput-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    .line 23
    sput-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mInited:Z

    .line 25
    sput-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionThis:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getConnectedDongleIP()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[getConnectedDongleIP] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-object v2

    .line 167
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v4, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v5, "getConnectedDongleIP"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 176
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v3, "[getConnectedDongleIP] NullPointerException caught!"

    invoke-static {v1, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v2

    .line 174
    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v3, "[getConnectedDongleIP] IndexOutOfBoundsException caught!"

    invoke-static {v1, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionThis:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;-><init>()V

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionThis:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    .line 36
    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionThis:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMirrorDisplayStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[getMirrorDisplayStatus] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "getMirrorDisplayStatus"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getMirrorModeState()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[getMirrorModeState] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, -0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "getMirrorModeState"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getWirelessDisplayManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-direct {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;-><init>()V

    .line 108
    const-string v1, "com.htc.service.HtcService"

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->loadClass(Ljava/lang/String;)V

    .line 109
    const-string v1, "WIRELESS_DISPLAY_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    .line 110
    const-string v0, "WirelessDisplayManagerReflection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getWirelessDisplayManager] got WirelessDisplayServiceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get_EXTRA_MIRROR_DISPLAY_STATE()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[get_EXTRA_MIRROR_DISPLAY_STATE] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-object v0

    .line 465
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v2, "EXTRA_MIRROR_DISPLAY_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_EXTRA_MIRROR_DISPLAY_STATE] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 469
    :catch_1
    move-exception v1

    .line 470
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_EXTRA_MIRROR_DISPLAY_STATE] IndexOutOfBoundsException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get_EXTRA_MIRROR_DISPLAY_STATUS()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 430
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[get_EXTRA_MIRROR_DISPLAY_STATUS] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return-object v0

    .line 437
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v2, "EXTRA_MIRROR_DISPLAY_STATUS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_EXTRA_MIRROR_DISPLAY_STATUS] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 441
    :catch_1
    move-exception v1

    .line 442
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_EXTRA_MIRROR_DISPLAY_STATUS] IndexOutOfBoundsException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get_MIRROR_DISPLAY_STATE_CHANGED_ACTION()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[get_MIRROR_DISPLAY_STATE_CHANGED_ACTION] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    return-object v0

    .line 381
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v2, "MIRROR_DISPLAY_STATE_CHANGED_ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_MIRROR_DISPLAY_STATE_CHANGED_ACTION] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 385
    :catch_1
    move-exception v1

    .line 386
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_MIRROR_DISPLAY_STATE_CHANGED_ACTION] IndexOutOfBoundsException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get_MIRROR_DONGLE_LIST_CHANGED_ACTION()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[get_MIRROR_DONGLE_LIST_CHANGED_ACTION] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-object v0

    .line 409
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v2, "MIRROR_DONGLE_LIST_CHANGED_ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_MIRROR_DONGLE_LIST_CHANGED_ACTION] NullPointerException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 413
    :catch_1
    move-exception v1

    .line 414
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[get_MIRROR_DONGLE_LIST_CHANGED_ACTION] IndexOutOfBoundsException caught!"

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get_MIRROR_MODE_APP_PAUSE()I
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[get_MIRROR_MODE_APP_PAUSE] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x7

    .line 362
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v1, "MIRROR_MODE_APP_PAUSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldInt(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static get_MIRROR_MODE_DISPLAY_DISABLED()I
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[get_MIRROR_MODE_DISPLAY_DISABLED] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v1, "MIRROR_MODE_DISPLAY_DISABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldInt(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static get_MIRROR_MODE_DISPLAY_ENABLED()I
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[get_MIRROR_MODE_DISPLAY_ENABLED] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x3

    .line 345
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v1, "MIRROR_MODE_DISPLAY_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getFieldInt(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 51
    const-class v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mInited:Z

    if-nez v2, :cond_5

    .line 54
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-direct {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;-><init>()V

    sput-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    .line 57
    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getClassObject()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    .line 58
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    const-string v3, "com.htc.service.WirelessDisplayManager"

    invoke-virtual {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->loadClass(Ljava/lang/String;)V

    .line 61
    :cond_1
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->getClassObject()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    invoke-static {p0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getWirelessDisplayManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    .line 64
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 65
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mInited:Z

    .line 68
    :cond_2
    sget-boolean v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mInited:Z

    if-nez v2, :cond_4

    .line 69
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->release()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    .line 73
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayServiceName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    .line 75
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v2, "[init] init WirelessDisplayManagerReflection failed."

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 82
    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    .line 79
    :cond_5
    :try_start_1
    const-string v2, "WirelessDisplayManagerReflection"

    const-string v3, "[init] already inited, dont need to init again."

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInited()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mInited:Z

    return v0
.end method

.method public static mirrorModeStartStop(Z)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[mirrorModeStartStop] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return v0

    .line 210
    :cond_0
    new-array v1, v3, [Ljava/lang/Class;

    .line 211
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    .line 213
    new-array v2, v3, [Ljava/lang/Object;

    .line 214
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 216
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "mirrorModeStartStop"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static mirrorNow()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[mirrorNow] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "mirrorNow"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static popDialog()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[popDialog] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "popDialog"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static setDLNAPreloadEnable(Z)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 285
    :cond_0
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v2, "[setDLNAPreloadEnable] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 310
    :goto_0
    return v0

    .line 289
    :cond_1
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    if-nez v0, :cond_2

    .line 290
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v2, "[setDLNAPreloadEnable] mWirelessDisplayManagerReflectionUtil is null."

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 291
    goto :goto_0

    .line 294
    :cond_2
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 295
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v2, "[setDLNAPreloadEnable] mWirelessDisplayManager is null."

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 296
    goto :goto_0

    .line 299
    :cond_3
    new-array v0, v3, [Ljava/lang/Class;

    .line 300
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 302
    new-array v2, v3, [Ljava/lang/Object;

    .line 303
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 305
    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v4, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v5, "setDLNAPreloadEnable"

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_4

    .line 308
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public static setMirrorDisplayOnOff(Z)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 244
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "WirelessDisplayManagerReflection"

    const-string v2, "[setMirrorDisplayOnOff] WirelessDisplayManagerReflection is not inited."

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return v0

    .line 249
    :cond_0
    new-array v1, v3, [Ljava/lang/Class;

    .line 250
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    .line 252
    new-array v2, v3, [Ljava/lang/Object;

    .line 253
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 255
    sget-object v0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "setMirrorDisplayOnOff"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static usedDongleFound()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "WirelessDisplayManagerReflection"

    const-string v1, "[usedDongleFound] WirelessDisplayManagerReflection is not inited."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManagerReflectionUtil:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;

    sget-object v3, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->mWirelessDisplayManager:Ljava/lang/Object;

    const-string v4, "usedDongleFound"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
