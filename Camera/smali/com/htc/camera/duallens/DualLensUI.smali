.class public Lcom/htc/camera/duallens/DualLensUI;
.super Lcom/htc/camera/component/CameraComponent;
.source "DualLensUI.java"


# instance fields
.field private final SHOW_TOAST_DELAY:I

.field private final SHOW_TOAST_DURATION_MAX:I

.field private final SHOW_TOAST_DURATION_MIN:I

.field private m_IsBlocked:Z

.field private m_IsSetupUI:Z

.field private m_IsShowingDualLensUI:Z

.field private m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

.field private final m_ModeActiveChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

.field private m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "Dual-lens block UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/duallens/DualLensUI;->SHOW_TOAST_DELAY:I

    .line 37
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/camera/duallens/DualLensUI;->SHOW_TOAST_DURATION_MIN:I

    .line 38
    const/16 v0, 0x1388

    iput v0, p0, Lcom/htc/camera/duallens/DualLensUI;->SHOW_TOAST_DURATION_MAX:I

    .line 56
    new-instance v0, Lcom/htc/camera/duallens/DualLensUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/duallens/DualLensUI$1;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ModeActiveChangedCallback:Lcom/htc/camera/property/c;

    .line 70
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->setBaseLayoutId(I)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/duallens/DualLensUI;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensUI;->onModeActiveChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p8}, Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->showLensBlockUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/duallens/DualLensUI;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/duallens/DualLensUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/duallens/DualLensUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/duallens/DualLensUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/duallens/DualLensUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p8}, Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p8}, Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/duallens/DualLensUI;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/duallens/DualLensUI;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/camera/duallens/DualLensUI;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/camera/duallens/DualLensUI;I)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/duallens/DualLensUI;I)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/duallens/DualLensUI;I)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/duallens/DualLensUI;I)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V

    return-void
.end method

.method private hideLensBlockUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    if-eqz v0, :cond_0

    .line 431
    iput-boolean v1, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    .line 433
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/duallens/DualLensUI;->showUI(Landroid/view/View;ZZ)V

    .line 435
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->removeMessages(I)V

    .line 437
    :cond_0
    return-void
.end method

.method private onModeActiveChanged(Z)V
    .locals 1

    .prologue
    .line 218
    if-eqz p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->showLensBlockUI()V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->TAG:Ljava/lang/String;

    const-string v1, "setupUI() - UI already setup"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsSetupUI:Z

    goto :goto_0
.end method

.method private showLensBlockUI()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 384
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaController;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iput-boolean v8, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    .line 403
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v8, v8}, Lcom/htc/camera/duallens/DualLensUI;->showUI(Landroid/view/View;ZZ)V

    .line 406
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 409
    :cond_6
    const/16 v2, 0x3ea

    const-wide/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 410
    const/16 v2, 0x3eb

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/duallens/DualLensUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    .line 83
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->showLensBlockUI()V

    goto :goto_0

    .line 86
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    .line 87
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsBlocked:Z

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 112
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/htc/camera/duallens/DualLensUI$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/duallens/DualLensUI$2;-><init>(Lcom/htc/camera/duallens/DualLensUI;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 138
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/duallens/DualLensUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensUI$3;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 156
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/duallens/DualLensUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensUI$4;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 172
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/duallens/DualLensUI$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/duallens/DualLensUI$5;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 186
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 187
    const-class v0, Lcom/htc/camera/panorama/IPanoramaController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 188
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 189
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 191
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->setupUI()V

    .line 192
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/duallens/DualLensUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 211
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    .line 253
    instance-of v0, p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 255
    check-cast v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 256
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/duallens/DualLensUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensUI$7;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualCaptureController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 264
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    .line 266
    :cond_0
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 292
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 293
    return-void

    .line 268
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/panorama/IPanoramaController;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 270
    check-cast v0, Lcom/htc/camera/panorama/IPanoramaController;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

    .line 271
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaController;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ModeActiveChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 272
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaController:Lcom/htc/camera/panorama/IPanoramaController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaController;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    .line 274
    :cond_3
    const-class v0, Lcom/htc/camera/panorama/IPanoramaController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0

    .line 276
    :cond_4
    instance-of v0, p1, Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 279
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ModeActiveChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 280
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    .line 282
    :cond_5
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0

    .line 284
    :cond_6
    instance-of v0, p1, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 286
    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 287
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensUI;->m_ModeActiveChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 288
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 289
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensUI;->hideLensBlockUI()V

    .line 290
    :cond_7
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_IsShowingDualLensUI:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensUI;->m_LensBlockToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/htc/camera/duallens/DualLensUI$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/duallens/DualLensUI$6;-><init>(Lcom/htc/camera/duallens/DualLensUI;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/duallens/DualLensUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 245
    :cond_0
    return-void
.end method
