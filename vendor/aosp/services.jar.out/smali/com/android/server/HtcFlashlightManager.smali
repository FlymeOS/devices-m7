.class public Lcom/android/server/HtcFlashlightManager;
.super Ljava/lang/Object;
.source "HtcFlashlightManager.java"


# static fields
.field private static sService:Landroid/os/IHtcHardwareService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getService()Landroid/os/IHtcHardwareService;
    .locals 3

    .prologue
    .line 54
    const-string v1, "FlashlightControl"

    const-string v2, "HtcFlashlightManager getService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    .line 60
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 58
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    .line 60
    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    goto :goto_0
.end method


# virtual methods
.method public get_front_flashlight_brightness(I)I
    .locals 4
    .param p1, "led"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 85
    .local v1, "service":Landroid/os/IHtcHardwareService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->getFrontFlashlightBrightness(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    :goto_0
    return v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in get_front_flashlight_brightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public has_front_flashlight()I
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 94
    .local v1, "service":Landroid/os/IHtcHardwareService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->hasFrontFlashlight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 98
    :goto_0
    return v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in hasFrontFlashlight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setFLTBrightness(I)I
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 66
    .local v1, "service":Landroid/os/IHtcHardwareService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->setFlashlightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in setBrightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set_front_flashlight_brightness(II)I
    .locals 4
    .param p1, "br1"    # I
    .param p2, "br2"    # I

    .prologue
    .line 74
    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 76
    .local v1, "service":Landroid/os/IHtcHardwareService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IHtcHardwareService;->setFrontFlashlightBrightness(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 80
    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in setFrontFlashlightBrightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, -0x1

    goto :goto_0
.end method
