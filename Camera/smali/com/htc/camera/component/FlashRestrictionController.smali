.class Lcom/htc/camera/component/FlashRestrictionController;
.super Lcom/htc/camera/component/cm;
.source "FlashRestrictionController.java"


# instance fields
.field private m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

.field private m_DisableStatus:I

.field private m_FileObserverForRIL:Landroid/os/FileObserver;

.field private m_FileObserverForWiMax:Landroid/os/FileObserver;

.field private m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_IsFirstTimePreview:Z

.field private m_IsTMListenerRegisted:Z

.field private final m_WorkerThread:Lcom/htc/camera/WorkerThread;

.field private m_phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    const-string v0, "Flash-Restriction Controller"

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 62
    iput-boolean v2, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z

    .line 65
    new-instance v0, Lcom/htc/camera/component/FlashRestrictionController$1;

    const-string v1, "Flash-Restriction Worker Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/component/FlashRestrictionController$1;-><init>(Lcom/htc/camera/component/FlashRestrictionController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 81
    new-instance v0, Lcom/htc/camera/component/FlashRestrictionController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/FlashRestrictionController$2;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/FlashRestrictionController;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FlashRestrictionController;->handleAsyncMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/FlashRestrictionController;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/FlashRestrictionController;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/FlashRestrictionController;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/FlashRestrictionController;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_IsTMListenerRegisted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/FlashRestrictionController;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->startFileObservers()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->showWarningToast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/FlashRestrictionController;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/WorkerThread;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/camera/component/FlashRestrictionController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/camera/component/FlashRestrictionController;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->stopFileObservers()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/IFlashController;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/camera/component/FlashRestrictionController;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    return p1
.end method

.method private checkAllRestrictions()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkRIL()V

    .line 105
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    .line 109
    return-void
.end method

.method private checkRIL()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 119
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v4

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRIL() - phone CallState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/FlashRestrictionController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private checkWifiHotspot()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 135
    const-string v1, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v2, "checkWifiHotspot() - Status : "

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    move v0, v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/FlashRestrictionController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 138
    return-void

    :cond_1
    move v3, v0

    .line 135
    goto :goto_0
.end method

.method private getRestrictionHint()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    iget v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 182
    const v0, 0x7f08015e

    goto :goto_0

    .line 183
    :cond_2
    iget v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 184
    const v0, 0x7f08015f

    goto :goto_0

    .line 185
    :cond_3
    iget v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 187
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isShowFlashLightHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const v0, 0x7f080160

    goto :goto_0

    .line 191
    :cond_4
    iget v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 192
    const v0, 0x7f080161

    goto :goto_0

    .line 193
    :cond_5
    const v0, 0x7f08015d

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    .line 223
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkRIL()V

    goto :goto_1

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isChecked(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-static {p1}, Lcom/htc/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisableStatusUpdated(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 420
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 421
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v1, "onDisableStatusUpdated() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    .line 432
    iget v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-eqz v0, :cond_3

    move v0, v1

    .line 433
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v3, :cond_4

    :goto_2
    if-eq v1, v0, :cond_0

    .line 435
    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 441
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->showWarningToast()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 432
    goto :goto_1

    :cond_4
    move v1, v2

    .line 433
    goto :goto_2

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showWarningToast()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 463
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 464
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v1, "showWarningToast() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/SupportState;

    .line 472
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_0

    .line 476
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 477
    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v1, "showWarningToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v1

    .line 485
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private startFileObservers()V
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 522
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-nez v0, :cond_1

    .line 524
    new-instance v0, Lcom/htc/camera/component/FlashRestrictionController$9;

    const-string v1, "/sys/camera_led_status/led_hotspot_status"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/component/FlashRestrictionController$9;-><init>(Lcom/htc/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 537
    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_hotspot_status\'"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopFileObservers()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 574
    :cond_2
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->exit()V

    .line 161
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->stopFileObservers()V

    .line 162
    iput-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    .line 163
    iput-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    .line 164
    iput-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    .line 167
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 170
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 171
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 239
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 242
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/FlashRestrictionController;->startFileObservers()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->start()V

    .line 257
    const-class v0, Lcom/htc/camera/power/IBatteryWatcher;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashRestrictionController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/power/IBatteryWatcher;

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    .line 260
    invoke-virtual {p0}, Lcom/htc/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 261
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->flashButtonClickedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/FlashRestrictionController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashRestrictionController$3;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 301
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/FlashRestrictionController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashRestrictionController$4;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 311
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FlashRestrictionController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashRestrictionController$5;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 348
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/FlashRestrictionController$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/FlashRestrictionController$6;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 373
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    sget-object v1, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/FlashRestrictionController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashRestrictionController$7;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/power/IBatteryWatcher;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 384
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    sget-object v1, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/FlashRestrictionController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FlashRestrictionController$8;-><init>(Lcom/htc/camera/component/FlashRestrictionController;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/power/IBatteryWatcher;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 398
    :goto_0
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 399
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IBatteryWatcher interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
