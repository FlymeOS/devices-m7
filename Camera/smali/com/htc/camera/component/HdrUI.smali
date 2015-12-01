.class public final Lcom/htc/camera/component/HdrUI;
.super Lcom/htc/camera/component/cm;
.source "HdrUI.java"


# instance fields
.field private m_HdrController:Lcom/htc/camera/component/HdrController;

.field private m_IsCaptureUIOpen:Z

.field private m_IsEnteredFromAutoScene:Z

.field private m_IsModeEntered:Z

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "HDR UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/HdrUI;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/HdrUI;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/HdrUI;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/HdrUI;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/HdrUI;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/htc/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z

    return p1
.end method

.method private closeCaptureUI()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/HdrUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "HDR Controller"

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/HdrController;

    iput-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    const/16 v2, 0x2710

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 314
    goto :goto_0
.end method

.method private onPhotoProcessed(Lcom/htc/camera/CaptureHandle;Z)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 195
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 196
    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/htc/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 200
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 204
    :cond_0
    if-eqz p2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/htc/camera/component/HdrUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 206
    :cond_1
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoProcessed() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPhotoProcessing(Z)V
    .locals 2

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 215
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 216
    if-eqz v0, :cond_1

    .line 217
    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/HdrUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoProcessing() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCaptureUI()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/htc/camera/component/HdrUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 236
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/htc/camera/component/HdrUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 250
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/HdrUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/HdrUI$1;-><init>(Lcom/htc/camera/component/HdrUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 262
    iget-object v1, p0, Lcom/htc/camera/component/HdrUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/HdrUI$2;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/HdrUI$2;-><init>(Lcom/htc/camera/component/HdrUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/HdrUI$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/HdrUI$3;-><init>(Lcom/htc/camera/component/HdrUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 301
    return-void
.end method


# virtual methods
.method public enterHdrMode(I)V
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter HDR mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter HDR mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 82
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    const/16 v2, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->openCaptureUI()V

    .line 92
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "enterHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitHdrMode(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit HDR mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->closeCaptureUI()V

    .line 115
    iput-boolean v4, p0, Lcom/htc/camera/component/HdrUI;->m_IsModeEntered:Z

    .line 116
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/htc/camera/component/HdrUI;->m_HdrController:Lcom/htc/camera/component/HdrController;

    const/16 v2, 0x2712

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI;->TAG:Ljava/lang/String;

    const-string v1, "exitHdrMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 135
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/HdrUI;->onPhotoProcessed(Lcom/htc/camera/CaptureHandle;Z)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/HdrUI;->onPhotoProcessing(Z)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 176
    invoke-direct {p0}, Lcom/htc/camera/component/HdrUI;->setupPropertyChangedCallbacks()V

    .line 177
    return-void
.end method
