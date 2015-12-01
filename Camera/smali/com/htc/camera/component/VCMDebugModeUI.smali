.class public Lcom/htc/camera/component/VCMDebugModeUI;
.super Lcom/htc/camera/component/CameraComponent;
.source "VCMDebugModeUI.java"


# instance fields
.field m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Confidence:Ljava/lang/String;

.field private m_ConfidenceTitle:Ljava/lang/String;

.field private m_FocusDistance:Ljava/lang/String;

.field private m_FocusDistanceTitle:Ljava/lang/String;

.field private m_MainLuma:Ljava/lang/String;

.field private m_MainLumaTitle:Ljava/lang/String;

.field private m_Paint:Landroid/graphics/Paint;

.field m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private m_StartMonitor:Z

.field private m_SubLuma:Ljava/lang/String;

.field private m_SubLumaTitle:Ljava/lang/String;

.field private m_VCMStep:Ljava/lang/String;

.field private m_VCMStepTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 57
    const-string v0, "VCM Debug UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;

    .line 38
    const-string v0, "vcm_step="

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStepTitle:Ljava/lang/String;

    .line 39
    const-string v0, "focus_distance="

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistanceTitle:Ljava/lang/String;

    .line 40
    const-string v0, "confidence_level="

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_ConfidenceTitle:Ljava/lang/String;

    .line 41
    const-string v0, "main_luma="

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLumaTitle:Ljava/lang/String;

    .line 42
    const-string v0, "sub_luma="

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLumaTitle:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStep:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistanceTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_FocusDistance:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_ConfidenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLumaTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLumaTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_Confidence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_MainLuma:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/camera/component/VCMDebugModeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_SubLuma:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/VCMDebugModeUI;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/camera/component/VCMDebugModeUI;->updateMonitorFlag()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/component/VCMDebugModeUI;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/VCMDebugModeUI;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_Paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/VCMDebugModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_VCMStepTitle:Ljava/lang/String;

    return-object v0
.end method

.method private updateMonitorFlag()V
    .locals 7

    .prologue
    const/16 v6, 0x3ea

    const/4 v5, 0x1

    .line 199
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v1, "updateMonitorFlag()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z

    .line 204
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 206
    iget-object v2, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v3, "updateMonitorFlag() - name:"

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DEBUG_VCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iput-boolean v5, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_StartMonitor:Z

    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {p0, p0, v6, v5}, Lcom/htc/camera/component/VCMDebugModeUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v1, "updateMonitorFlag() - start update vcm info"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/VCMDebugModeUI;->removeMessages(I)V

    .line 222
    invoke-virtual {p0, v6}, Lcom/htc/camera/component/VCMDebugModeUI;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v1, "updateMonitorFlag() - stop update vcm info"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 73
    :cond_0
    const/16 v2, 0x3ea

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/VCMDebugModeUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/VCMDebugModeUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/htc/camera/component/VCMDebugModeUI$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/component/VCMDebugModeUI$1;-><init>(Lcom/htc/camera/component/VCMDebugModeUI;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 114
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/VCMDebugModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/htc/camera/component/VCMDebugModeUI;->updateMonitorFlag()V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/VCMDebugModeUI$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VCMDebugModeUI$2;-><init>(Lcom/htc/camera/component/VCMDebugModeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 131
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/VCMDebugModeUI$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VCMDebugModeUI$3;-><init>(Lcom/htc/camera/component/VCMDebugModeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 141
    const-class v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/VCMDebugModeUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/VCMDebugModeUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/VCMDebugModeUI$4;-><init>(Lcom/htc/camera/component/VCMDebugModeUI;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 173
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/VCMDebugModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/VCMDebugModeUI$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/VCMDebugModeUI$5;-><init>(Lcom/htc/camera/component/VCMDebugModeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 195
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IViewFinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
