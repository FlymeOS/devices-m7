.class public final Lcom/htc/camera/component/DualLensCalibrateUI;
.super Lcom/htc/camera/component/cm;
.source "DualLensCalibrateUI.java"


# instance fields
.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

.field private m_IsModeEntered:Z

.field private m_PictureIdx:I

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "DUALLENSCALIBRATE UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 52
    iput v2, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_PictureIdx:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/DualLensCalibrateUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/DualLensCalibrateUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/DualLensCalibrateUI;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_PictureIdx:I

    return v0
.end method

.method private hideToast()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 214
    return-void
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 290
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/component/DualLensCalibrateController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/DualLensCalibrateController;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    .line 285
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    const/16 v2, 0x2710

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 288
    goto :goto_0
.end method

.method private onPhotoProcessed(Lcom/htc/camera/CaptureHandle;I)V
    .locals 2

    .prologue
    .line 173
    iput p2, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_PictureIdx:I

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 177
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 182
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->hideToast()V

    .line 185
    iget v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_PictureIdx:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->showHintToast(I)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 188
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoProcessed() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPhotoProcessing(Z)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 197
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 198
    if-eqz v0, :cond_1

    .line 199
    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoProcessing() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 242
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 245
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/DualLensCalibrateUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/DualLensCalibrateUI$1;-><init>(Lcom/htc/camera/component/DualLensCalibrateUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 262
    :cond_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/DualLensCalibrateUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/DualLensCalibrateUI$2;-><init>(Lcom/htc/camera/component/DualLensCalibrateUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 275
    return-void
.end method

.method private showHintToast(I)V
    .locals 6

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "Got VCM picture:"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    invoke-virtual {v1, v0}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 229
    :cond_0
    const/16 v2, 0x2714

    const-wide/16 v3, 0x1388

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enterDualLensCalibrateMode()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "enterDualLensCalibrateMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter DualLensCalibrate mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter DualLensCalibrate mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_IsModeEntered:Z

    .line 78
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/DualLensCalibrateUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 80
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    const/16 v2, 0x2713

    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "enterDualLensCalibrateMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitDualLensCalibrateMode()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "exitDualLensCalibrateMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit DualLensCalibrate mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_IsModeEntered:Z

    .line 102
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/DualLensCalibrateUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;

    const-string v1, "exitDualLensCalibrateMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 121
    aget-object v0, v0, v3

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/DualLensCalibrateUI;->onPhotoProcessed(Lcom/htc/camera/CaptureHandle;I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->onPhotoProcessing(Z)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/DualLensCalibrateController;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_DualLensCalibrateController:Lcom/htc/camera/component/DualLensCalibrateController;

    .line 132
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->enterDualLensCalibrateMode()V

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->hideToast()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 161
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 165
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateUI;->setupPropertyChangedCallbacks()V

    .line 166
    return-void
.end method
