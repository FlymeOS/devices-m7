.class public Lcom/android/server/HtcHardwareService;
.super Landroid/os/IHtcHardwareService$Stub;
.source "HtcHardwareService.java"


# static fields
.field private static sService:Landroid/os/IHtcHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/IHtcHardwareService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static getService()Landroid/os/IHtcHardwareService;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    .line 63
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 61
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    .line 63
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    goto :goto_0
.end method

.method private static native getVTEBrightness_native(I)I
.end method

.method private static native hasFrontFlashlight_native()I
.end method

.method private static native setFlashlightBrightness_native(I)V
.end method

.method private static native setVTEBrightness_native(II)I
.end method


# virtual methods
.method public getFrontFlashlightBrightness(I)I
    .locals 1
    .param p1, "led"    # I

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->getVTEBrightness_native(I)I

    move-result v0

    return v0
.end method

.method public hasFrontFlashlight()I
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/server/HtcHardwareService;->hasFrontFlashlight_native()I

    move-result v0

    return v0
.end method

.method public setFlashlightBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFlashlightBrightness_native(I)V

    .line 72
    return-void
.end method

.method public setFrontFlashlightBrightness(II)I
    .locals 1
    .param p1, "br1"    # I
    .param p2, "br2"    # I

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/android/server/HtcHardwareService;->setVTEBrightness_native(II)I

    move-result v0

    return v0
.end method
