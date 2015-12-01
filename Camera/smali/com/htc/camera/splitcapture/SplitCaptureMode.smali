.class public final Lcom/htc/camera/splitcapture/SplitCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "SplitCaptureMode.java"


# instance fields
.field private m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

.field private m_ExpandMenu:Landroid/widget/LinearLayout;

.field private final m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private final m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsStartingVideoRecording:Z

.field private m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private final m_RotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private final m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShownSplitCaptureInstruction:Z

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_SplitVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;

.field private m_SplitVideoResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_SyncAsyncButtonClickListener:Landroid/view/View$OnClickListener;

.field private m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_VideoRecordingButton:Lcom/htc/camera/ui/IVideoRecordingButton;

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

.field private m_VoiceCommandClient:Lcom/htc/camera/IVoiceHfmClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "split-capture-type"

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    const-string v0, "Split-Capture Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 78
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 94
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    .line 119
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    .line 128
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$3;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    .line 136
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$4;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    .line 144
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncButtonClickListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsButtonClickListener:Landroid/view/View$OnClickListener;

    .line 187
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 78
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 94
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$1;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    .line 119
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$2;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    .line 128
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$3;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    .line 136
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$4;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    .line 144
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncButtonClickListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsButtonClickListener:Landroid/view/View$OnClickListener;

    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateExpandMenuVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onReadyForVideoRecording()V

    return-void
.end method

.method static synthetic access$1302(Lcom/htc/camera/splitcapture/SplitCaptureMode;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->linkToCameraThreadComponents()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onSyncAsyncButtonPressed()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->linkToCompoents()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->initializeUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onSplitPhotoStateChanged(Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonIcon()V

    return-void
.end method

.method private enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 204
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType("

    const-string v3, ", "

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 209
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$7;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 237
    :goto_0
    if-nez p3, :cond_2

    if-ne p1, p2, :cond_2

    .line 239
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Same as previous capture type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_1
    return v6

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->linkToCompoents()V

    .line 233
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->initializeUI()V

    goto :goto_0

    .line 244
    :cond_2
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p2}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 361
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterCaptureType() - Unknown capture type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 362
    goto :goto_1

    .line 249
    :pswitch_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Real-time components are not created yet, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_5

    .line 258
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 259
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No ISplitPhotoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 262
    goto :goto_1

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$8;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 281
    :cond_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    move v0, v6

    .line 284
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->enter(I)Z

    move-result v6

    .line 285
    if-eqz v6, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showAsyncSplitCaptureInstruction()V

    goto/16 :goto_1

    .line 294
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Real-time components are not created yet, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_8

    .line 303
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 304
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No ISplitVideoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 307
    goto/16 :goto_1

    .line 313
    :cond_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    move v0, v6

    .line 315
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/ISplitVideoController;->enter(I)Z

    move-result v0

    if-nez v0, :cond_9

    move v6, v7

    .line 316
    goto/16 :goto_1

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-direct {p0, p2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getSplitVideoDuration(Lcom/htc/camera/splitcapture/SplitCaptureType;)Lcom/htc/camera/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/ISplitVideoController;->setDuration(Lcom/htc/camera/Duration;)V

    goto/16 :goto_1

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Entering human-joint mode is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    move-result v6

    goto/16 :goto_1

    .line 329
    :pswitch_3
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_THREAD_STARTED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 330
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/InitialCameraOpenPolicy;->AFTER_CREATING_REALTIME_COMPONENTS:Lcom/htc/camera/InitialCameraOpenPolicy;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 333
    :cond_a
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Real-time components are not created yet, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 340
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No Dual camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 343
    goto/16 :goto_1

    .line 347
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-direct {p0, p2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getDualCaptureStyle(Lcom/htc/camera/splitcapture/SplitCaptureType;)Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/IDualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 349
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - Fail to set dual-capture style"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 350
    goto/16 :goto_1

    .line 355
    :cond_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e

    move v7, v6

    .line 357
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v7}, Lcom/htc/camera/dualcamera/IDualCameraController;->enter(I)V

    goto/16 :goto_1

    :cond_f
    move v0, v7

    goto/16 :goto_3

    :cond_10
    move v0, v7

    goto/16 :goto_2

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private exitCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "exitCaptureType("

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    aput-object v4, v3, v1

    const-string v4, ", next="

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ")"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "exitCaptureType() - Same as next capture type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 379
    :cond_1
    sget-object v3, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 484
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitCaptureType() - Unknown capture type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v3, v6}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_5

    .line 398
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    .line 400
    :goto_1
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_4

    .line 401
    or-int/lit8 v0, v0, 0x2

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->exit(I)V

    .line 407
    :goto_2
    if-eqz p1, :cond_0

    .line 409
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_6_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    if-eq p1, v0, :cond_0

    .line 411
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z

    goto :goto_0

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No ISplitPhotoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 421
    :pswitch_2
    if-eqz p1, :cond_6

    .line 423
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 432
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_7

    .line 433
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 436
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_9

    .line 439
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_f

    move v0, v1

    .line 441
    :goto_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_8

    .line 442
    or-int/lit8 v0, v0, 0x2

    .line 443
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/ISplitVideoController;->exit(I)V

    goto/16 :goto_0

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No ISplitVideoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_3
    if-eqz p1, :cond_a

    .line 456
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    .line 466
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_b

    .line 467
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_d

    .line 473
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_e

    move v0, v1

    .line 475
    :goto_4
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_c

    .line 476
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 477
    :cond_c
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->exit(I)V

    goto/16 :goto_0

    .line 480
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - No IDualCameraController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v2

    goto/16 :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 456
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDualCaptureStyle(Lcom/htc/camera/splitcapture/SplitCaptureType;)Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;
    .locals 2

    .prologue
    .line 528
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 535
    :pswitch_0
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    :goto_0
    return-object v0

    .line 531
    :pswitch_1
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    goto :goto_0

    .line 533
    :pswitch_2
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDualCaptureSupportStateFromSettings()Lcom/htc/camera/SupportState;
    .locals 4

    .prologue
    .line 515
    sget-object v1, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    .line 516
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 517
    if-eqz v0, :cond_0

    .line 518
    const-string v1, "dual-capture-support"

    const-class v2, Lcom/htc/camera/SupportState;

    sget-object v3, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/SupportState;

    .line 519
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "getDualCaptureSupportStateFromSettings() - State: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getSplitVideoDuration(Lcom/htc/camera/splitcapture/SplitCaptureType;)Lcom/htc/camera/Duration;
    .locals 5

    .prologue
    const-wide/16 v3, 0x6

    .line 553
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 560
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSplitVideoDuration() - Undefined capture type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {v3, v4}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    .line 556
    :pswitch_0
    invoke-static {v3, v4}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_1
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getDualCaptureSupportStateFromSettings()Lcom/htc/camera/SupportState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    .line 572
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_0

    .line 573
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "initialize() - Dual capture support state: "

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "split-capture-type"

    const-class v2, Lcom/htc/camera/splitcapture/SplitCaptureType;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 583
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 586
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSupportStates()V

    .line 589
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;

    invoke-direct {v0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;

    .line 592
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 617
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 618
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 619
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$10;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 628
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$11;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 637
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$12;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 648
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$13;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 656
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$14;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 667
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$15;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 676
    return-void
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->NOT_READY:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_2

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "initializeUI() - Wait dual capture support state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "initializeUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 700
    const v0, 0x7f0e00f4

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_4

    .line 702
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 706
    :goto_1
    const v1, 0x7f0e01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    .line 707
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0e01fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 708
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_5

    .line 710
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 711
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0e01ff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 717
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 718
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 723
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 728
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateExpandMenuVisibility()V

    goto/16 :goto_0

    .line 704
    :cond_4
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_1

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setVisibility(I)V

    goto :goto_2

    .line 722
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_3
.end method

.method private linkToCameraThreadComponents()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 737
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "linkToCompoents() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    return-void
.end method

.method private linkToCompoents()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VideoRecordingButton:Lcom/htc/camera/ui/IVideoRecordingButton;

    if-nez v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/IVideoRecordingButton;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IVideoRecordingButton;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VideoRecordingButton:Lcom/htc/camera/ui/IVideoRecordingButton;

    .line 750
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VideoRecordingButton:Lcom/htc/camera/ui/IVideoRecordingButton;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VideoRecordingButton:Lcom/htc/camera/ui/IVideoRecordingButton;

    sget-object v1, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_RELEASED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$16;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/IVideoRecordingButton;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VoiceCommandClient:Lcom/htc/camera/IVoiceHfmClient;

    if-nez v0, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IVoiceHfmClient;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VoiceCommandClient:Lcom/htc/camera/IVoiceHfmClient;

    .line 768
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VoiceCommandClient:Lcom/htc/camera/IVoiceHfmClient;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_VoiceCommandClient:Lcom/htc/camera/IVoiceHfmClient;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->EVENT_TRIGGER_VOICE_RECORD:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$17;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$17;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/IVoiceHfmClient;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_3

    .line 786
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 787
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_6

    .line 789
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 790
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 792
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 804
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_4

    .line 806
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 807
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_7

    .line 809
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$18;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$18;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 817
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode$19;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 829
    :cond_4
    :goto_2
    return-void

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "linkToCompoents() - cannot find interface IUIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 827
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "linkToCompoents() - No IDualCameraController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showAsyncSplitCaptureInstruction()V

    .line 1008
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_0

    .line 1016
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsStartingVideoRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStarted() - Switch back to split photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0
.end method

.method private onReadyForVideoRecording()V
    .locals 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_0

    .line 1037
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsStartingVideoRecording:Z

    if-eqz v0, :cond_0

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsStartingVideoRecording:Z

    .line 1040
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onReadyForVideoRecording() - Start split video recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->prepareRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    goto :goto_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onReadyForVideoRecording() - Fail to start split video recording, switch back to split photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0

    .line 1054
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadyForVideoRecording() - Unknown split video capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/ISplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", switch back to split photo mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0
.end method

.method private onSplitPhotoStateChanged(Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p1, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncAsyncButtonPressed()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0
.end method

.method private setSyncAsyncButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1245
    :cond_0
    return-void
.end method

.method private showAsyncSplitCaptureInstruction()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    if-ne v0, v1, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 1255
    if-eqz v0, :cond_1

    .line 1256
    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 1260
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z

    .line 1262
    :cond_0
    return-void

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enter - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateExpandMenuVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 1442
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateExpandMenuVisibility() - splitCaptureType is null. Hide user interface."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :goto_0
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v2, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 1448
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateExpandMenuVisibility() - not entered/entering yet. Hide user interface."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 1453
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1456
    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 1458
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 1459
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateExpandMenuVisibility() - isVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1456
    goto :goto_1
.end method

.method private updateSupportStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1467
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    :goto_0
    return-void

    .line 1469
    :cond_0
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1472
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1473
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1474
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1478
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1479
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1480
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1485
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1486
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1487
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateSyncAsyncButtonEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    if-eqz v0, :cond_0

    .line 1392
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1411
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1412
    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 1417
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setSyncAsyncButtonEnabled(Z)V

    goto :goto_0

    .line 1395
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_2

    .line 1397
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-eq v0, v1, :cond_2

    .line 1399
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setSyncAsyncButtonEnabled(Z)V

    goto :goto_0

    .line 1406
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setSyncAsyncButtonEnabled(Z)V

    goto :goto_0

    .line 1422
    :pswitch_2
    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_2

    .line 1428
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setSyncAsyncButtonEnabled(Z)V

    goto :goto_0

    .line 1425
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setSyncAsyncButtonEnabled(Z)V

    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1412
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 1422
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private updateSyncAsyncButtonIcon()V
    .locals 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    if-nez v0, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateSyncAsyncButtonIcon() -  Capture type: "

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1368
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1371
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_0

    .line 1374
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_0

    .line 1368
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitCaptureMode;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020217

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 852
    new-instance v1, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "split-capture"

    :cond_0
    invoke-direct {v1, v0, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 853
    iget-object v0, v1, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    iget-object v2, v1, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/property/PropertyBindingMode;->TwoWay:Lcom/htc/camera/property/PropertyBindingMode;

    invoke-virtual {v0, v2, v4, v4, v3}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V

    .line 854
    new-instance v0, Lcom/htc/camera/data/PropertyBinding;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v5, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/BindingMode;)V

    invoke-static {v0}, Lcom/htc/camera/data/BindingManager;->addBinding(Lcom/htc/camera/data/Binding;)V

    .line 855
    new-instance v0, Lcom/htc/camera/data/PropertyBinding;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_MAIN_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    sget-object v5, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/BindingMode;)V

    invoke-static {v0}, Lcom/htc/camera/data/BindingManager;->addBinding(Lcom/htc/camera/data/Binding;)V

    .line 856
    const-string v0, "pref_camera_review_duration_front"

    sget-object v2, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    const-string v0, "pref_camera_review_duration_main"

    sget-object v2, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v0, "pref_camera_self_timer_main"

    sget-object v2, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const-string v0, "pref_camera_self_timer_front"

    sget-object v2, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    const-string v0, "pref_camera_tap_capture"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    const-string v0, "pref_camera_tap_capture_front"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    return-object v1
.end method

.method onDualCaptureSupportStateChanged(Lcom/htc/camera/SupportState;)V
    .locals 3

    .prologue
    .line 871
    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-eq p1, v0, :cond_0

    .line 874
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 877
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 888
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onDualCaptureSupportStateChanged() - State: "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 891
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DualCaptureSupportState:Lcom/htc/camera/SupportState;

    .line 894
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 895
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->initializeUI()V

    .line 899
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 900
    if-eqz v0, :cond_2

    const-string v1, "dual-capture-support"

    const-class v2, Lcom/htc/camera/SupportState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    if-nez v1, :cond_2

    .line 901
    const-string v1, "dual-capture-support"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 902
    :cond_2
    return-void

    .line 882
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualCaptureSupportStateChanged() - Dual-capture is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", change to default capture type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 4

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 925
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 926
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v3, p2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    move-result v0

    .line 929
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSupportStates()V

    .line 930
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V

    .line 931
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonIcon()V

    .line 933
    if-eqz v0, :cond_1

    .line 936
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 937
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 938
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    .line 939
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    :cond_1
    return v0

    .line 926
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 953
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->exitCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)V

    .line 956
    if-eqz p1, :cond_0

    .line 958
    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 967
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ShownSplitCaptureInstruction:Z

    .line 970
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateExpandMenuVisibility()V

    .line 973
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 976
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 977
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 980
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 981
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 982
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 983
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SyncAsyncSwitchButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 953
    goto :goto_0

    .line 962
    :pswitch_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_1

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onHumanJointSupportStateChanged(Lcom/htc/camera/SupportState;)V
    .locals 3

    .prologue
    .line 994
    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->HumanJointCapture:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHumanJointSupportStateChanged() - Human-joint mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", change to default capture type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_DefaultCaptureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 999
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_ExpandMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 914
    :cond_0
    return-void
.end method

.method protected onVideoRecordingButtonReleased()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1080
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {p0, v2}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 1083
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsStartingVideoRecording:Z

    .line 1091
    :goto_0
    return v0

    .line 1088
    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_IsStartingVideoRecording:Z

    .line 1089
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onVideoRecordingButtonReleased() - Fail to change to split video"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 1091
    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1119
    if-eqz p1, :cond_1

    .line 1121
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1122
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 1123
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 1124
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1126
    if-eqz p5, :cond_0

    .line 1128
    if-lez p4, :cond_2

    .line 1130
    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$20;

    invoke-direct {v1, p0, p5}, Lcom/htc/camera/splitcapture/SplitCaptureMode$20;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1157
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1159
    :cond_1
    return-void

    .line 1154
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 1099
    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 1100
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 1103
    if-eqz p1, :cond_1

    .line 1105
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 1106
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    .line 1107
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1109
    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 1110
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .line 1114
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 1116
    :cond_1
    return-void

    .line 1112
    :cond_2
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method public setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1167
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->threadAccessCheck()V

    .line 1168
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureType() - Capture mode is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_1
    :goto_0
    return-void

    .line 1173
    :cond_2
    if-nez p1, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureType() - No capture type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureType() - Change to same type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureType("

    const-string v3, ")"

    invoke-static {v0, v1, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1186
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1189
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 1190
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    const/4 v0, 0x1

    move v1, v0

    .line 1191
    :goto_1
    if-eqz v1, :cond_6

    .line 1192
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 1195
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_7

    .line 1196
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    invoke-interface {v4, v2}, Lcom/htc/camera/ui/IViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1201
    :cond_7
    const/4 v0, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, p1, v0, v4}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->exitCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)V

    .line 1202
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, p1, v4, v5}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1204
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v4, "setCaptureType() - Fail to enter capture type, enter previous capture type"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1206
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;

    const-string v4, "setCaptureType() - Fail to enter previous capture type"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {v3, v2}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 1190
    goto :goto_1

    .line 1213
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    .line 1214
    invoke-virtual {v3, v2}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    .line 1213
    :cond_a
    throw v0

    :cond_b
    if-eqz v1, :cond_c

    .line 1214
    invoke-virtual {v3, v2}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    .line 1219
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1220
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "split-capture-type"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1221
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSupportStates()V

    .line 1224
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V

    .line 1225
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonIcon()V

    goto/16 :goto_0
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 1

    .prologue
    .line 1234
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/htc/camera/effect/EffectContext;->setFlags(I)V

    .line 1235
    invoke-super {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V

    .line 1236
    return-void
.end method

.method protected showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1278
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->threadAccessCheck()V

    .line 1281
    if-nez p1, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    if-eqz p2, :cond_3

    .line 1287
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    if-lez p3, :cond_2

    .line 1292
    invoke-static {p1, v2, v3, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1293
    if-eqz p4, :cond_0

    .line 1295
    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$21;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/splitcapture/SplitCaptureMode$21;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1312
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1313
    if-eqz p4, :cond_0

    .line 1314
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1320
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    if-lez p3, :cond_4

    .line 1325
    invoke-static {p1, v3, v2, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1326
    if-eqz p4, :cond_0

    .line 1328
    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureMode$22;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/splitcapture/SplitCaptureMode$22;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1345
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1346
    if-eqz p4, :cond_0

    .line 1347
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 1270
    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 1273
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    .line 1274
    return-void

    .line 1273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
