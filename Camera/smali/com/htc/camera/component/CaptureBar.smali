.class public final Lcom/htc/camera/component/CaptureBar;
.super Lcom/htc/camera/ICaptureBar;
.source "CaptureBar.java"

# interfaces
.implements Lcom/htc/camera/ui/IVideoRecordingButton;


# instance fields
.field private final isVideoButtonClicked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActiveCaptureButtonType:I

.field private m_AecLockHandle:Lcom/htc/camera/Handle;

.field private m_AwbLockHandle:Lcom/htc/camera/Handle;

.field private m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private final m_CameraModeSupportStateChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureBar:Landroid/view/View;

.field private final m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

.field private final m_CaptureButtonStyleHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$CaptureButtonStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private final m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CustomVideoCaptureIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultCaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_FocusLockHandle:Lcom/htc/camera/Handle;

.field private m_IsPopupOutsideTouched:Z

.field private m_IsPrimaryButtonHighlighted:Z

.field private m_IsTakingPicture:Z

.field private m_MainIndicatorContainer:Landroid/view/View;

.field private final m_MainIndicatorHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$IndicatorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_MainIndicatorImageView:Landroid/widget/ImageView;

.field private m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

.field private m_PopupOutsideTouchedView:Landroid/view/View;

.field private m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

.field private m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_RecordingTimerEmptyArea:Landroid/view/View;

.field private final m_RecordingTimerHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerIcon:Landroid/widget/ImageView;

.field private m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 274
    const-string v0, "Capture Bar"

    invoke-direct {p0, v0, v4, p1, v2}, Lcom/htc/camera/ICaptureBar;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 109
    iput v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 113
    new-instance v0, Lcom/htc/camera/component/CaptureBar$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CaptureBar$1;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CameraModeSupportStateChangedCallback:Lcom/htc/camera/property/c;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    .line 123
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyleHandles:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DefaultCaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    .line 277
    const-string v0, "CaptureBar.IsVideoButtonClicked"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    .line 280
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    .line 283
    if-eqz v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$2;

    sget-object v3, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/htc/camera/component/CaptureBar$2;-><init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 302
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_PRESSED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/component/CaptureBar;->enableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 303
    sget-object v0, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_RELEASED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/component/CaptureBar;->enableEventLogs(Lcom/htc/camera/base/EventKey;I)V

    .line 304
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "No IViewfinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->onCameraModeSupportStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->onTopSecondaryButtonPressed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->onTopSecondaryButtonReleased()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/CaptureBar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->unlock3A()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/CaptureBar;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateDefaultCaptureButtonStyle()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/property/c;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CameraModeSupportStateChangedCallback:Lcom/htc/camera/property/c;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/CaptureBar;J)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->onElapsedRecordingSecondsChanged(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/CaptureBar;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/camera/component/CaptureBar;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/component/CaptureBar;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/component/CaptureBar;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/camera/component/CaptureBar;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/component/CaptureBar;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->showSelfTimer(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateCaptureButtonFunctions()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/component/CaptureBar;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/camera/component/CaptureBar;ZZ)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/CaptureBar;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/CaptureBar;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V

    return-void
.end method

.method private canShowCaptureBar()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 312
    if-lez v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;

    .line 315
    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->visible:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->access$400(Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "canShowCaptureBar() - Last handle is not visible"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return v3

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "canShowCaptureBar() - Last handle is visible"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 323
    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 331
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v1, v3

    .line 347
    :goto_1
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 353
    :cond_2
    :goto_2
    if-nez v1, :cond_4

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "canShowCaptureBar() - Cannot show capture bar in current state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 342
    goto :goto_1

    :cond_3
    move v1, v2

    .line 351
    goto :goto_2

    :cond_4
    move v3, v2

    .line 359
    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private changeCaptureButtonStyle(Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    if-ne v0, p1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "changeCaptureButtonStyle("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    goto :goto_0
.end method

.method private getRecordingTimeString(J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const-wide/16 v8, 0x64

    .line 525
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    rem-long/2addr v0, v8

    .line 526
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    .line 527
    rem-long v4, p1, v4

    .line 528
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v0, ""

    .line 529
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v1, v4, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1121
    const/4 v0, 0x0

    .line 1123
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1125
    const/4 v1, 0x3

    new-array v3, v1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    aput-object v4, v3, v1

    .line 1131
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1133
    aget-object v4, v3, v1

    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    aget-object v0, v3, v1

    .line 1137
    :goto_1
    return-object v0

    .line 1131
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "getTouchedView - null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private hideCaptureBar(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 538
    if-lez v0, :cond_0

    .line 540
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;

    .line 541
    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->visible:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;->access$400(Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideCaptureBar() - Last handle is visible"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideCaptureBar() - Hide"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, p1}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V

    .line 553
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isCenterCaptureButtons()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 872
    .line 874
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    sget-object v2, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    sget-object v2, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCenterCaptureBar() - isCenter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return v1

    :cond_2
    move v0, v1

    .line 877
    goto :goto_0
.end method

.method private isNormalVideoScene()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 905
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_1

    move v1, v2

    .line 916
    :cond_0
    :goto_0
    return v1

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/an;

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private isSlowMotionMode()Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SlowMotionScene;

    goto :goto_0
.end method

.method private onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 925
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonPressed("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 928
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCamcorderButtonPressed() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 935
    sget-object v0, Lcom/htc/camera/component/CaptureBar;->PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CaptureBar;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonPressed() - Camcorder button is already pressed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_3
    iput p2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 958
    new-instance v0, Lcom/htc/camera/base/EventArgs;

    invoke-direct {v0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 959
    sget-object v1, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_PRESSED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/CaptureBar;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 960
    invoke-virtual {v0}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonPressed() - Event is handled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-direct {p0, p1, v4}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 972
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->activate()V

    goto :goto_0
.end method

.method private onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 981
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonReleased("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 984
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, p2, :cond_0

    .line 986
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCamcorderButtonReleased() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonReleased() - Camcorder button is not pressed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    :cond_1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->removeMessages(I)V

    .line 999
    new-instance v0, Lcom/htc/camera/base/EventArgs;

    invoke-direct {v0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 1000
    sget-object v1, Lcom/htc/camera/ui/IVideoRecordingButton;->EVENT_RELEASED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/CaptureBar;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 1003
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {v0}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1008
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1009
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->prepareRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    .line 1024
    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    goto :goto_0

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonReleased() - Cannot start or stop recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCamcorderButtonReleased() - Event is handled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1032
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonPressed("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1035
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraButtonPressed() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1042
    sget-object v0, Lcom/htc/camera/component/CaptureBar;->PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CaptureBar;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1047
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonPressed() - Camera button is already pressed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_3
    iput p2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 1053
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 1066
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1069
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0, p1, v4}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 1071
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 1076
    :cond_4
    const-string v1, "Press Camera Button"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonPressed() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    .locals 4

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, p2, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraButtonReleased() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased() - Camera button is not pressed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->removeMessages(I)V

    .line 1103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    goto :goto_0
.end method

.method private onCameraModeSupportStateChanged()V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateCaptureButtonFunctions()V

    .line 1112
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateDefaultCaptureButtonStyle()V

    .line 1113
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V

    .line 1114
    return-void
.end method

.method private onElapsedRecordingSecondsChanged(J)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1271
    cmp-long v0, p1, v5

    if-gez v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    const-wide/16 v3, 0x1

    cmp-long v0, p1, v3

    if-nez v0, :cond_2

    .line 1276
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateCaptureButtonFunctions()V

    .line 1279
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1280
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-eq v0, v3, :cond_7

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V

    .line 1283
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1288
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    move-object v3, v0

    .line 1291
    :goto_2
    cmp-long v0, p1, v5

    if-nez v0, :cond_4

    .line 1293
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v4, 0x7f090165

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1294
    invoke-direct {p0, v1}, Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V

    .line 1298
    :cond_4
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 1299
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 1300
    :goto_3
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1302
    :goto_4
    if-nez v1, :cond_b

    .line 1306
    :goto_5
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1308
    const-class v0, Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IVideoSceneController;

    .line 1309
    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/htc/camera/effect/IVideoSceneController;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1310
    :goto_6
    long-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-long p1, v0

    .line 1314
    :cond_5
    if-eqz v1, :cond_6

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gtz v0, :cond_6

    .line 1315
    const/high16 v0, -0x10000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1318
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CaptureBar;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1280
    goto :goto_1

    .line 1290
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    move-object v3, v0

    goto :goto_2

    .line 1299
    :cond_9
    sget-object v0, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    goto :goto_3

    :cond_a
    move v1, v2

    .line 1300
    goto :goto_4

    .line 1305
    :cond_b
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v4

    sub-long p1, v4, p1

    goto :goto_5

    .line 1309
    :cond_c
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_6
.end method

.method private onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 1396
    :goto_1
    return v0

    .line 1342
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 1344
    goto :goto_1

    .line 1351
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1352
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_2

    move v0, v2

    .line 1353
    goto :goto_1

    .line 1354
    :cond_2
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    .line 1357
    goto :goto_1

    .line 1361
    :cond_4
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1370
    :goto_2
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1364
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/CaptureBar;->onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_2

    .line 1367
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_2

    .line 1375
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1378
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->unlock3A()V

    .line 1381
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    .line 1382
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1383
    const-string v1, "Focus key"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    .line 1386
    :cond_5
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 1387
    if-eqz v0, :cond_0

    .line 1389
    const-string v1, "Focus key"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_AecLockHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1338
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_2
        0x83 -> :sswitch_1
    .end sparse-switch

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1405
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1446
    :cond_0
    :goto_0
    return v0

    .line 1409
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1419
    iget v2, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-ne v2, v4, :cond_0

    .line 1421
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1428
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1437
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1431
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/CaptureBar;->onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 1434
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 1442
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->unlock3A()V

    goto :goto_0

    .line 1405
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_2
        0x83 -> :sswitch_1
    .end sparse-switch

    .line 1428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 1164
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    .line 1166
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1204
    :goto_0
    return v0

    .line 1170
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 1204
    goto :goto_0

    .line 1175
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1176
    goto :goto_0

    .line 1186
    :cond_1
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    goto :goto_1

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onTopSecondaryButtonPressed()V
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 1219
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1222
    :pswitch_0
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1231
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopSecondaryButtonPressed() - Cannot pause or resume recording, recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->pauseVideoRecord()V

    goto :goto_0

    .line 1228
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resumeVideoRecord()V

    goto :goto_0

    .line 1219
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1222
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onTopSecondaryButtonReleased()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1454
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z

    .line 1455
    iput v1, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 1456
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V

    .line 1457
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1458
    return-void
.end method

.method private resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1465
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButton("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1468
    if-nez p1, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButton() - No button specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_0
    return-void

    .line 1475
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 1478
    if-eqz p2, :cond_1

    .line 1481
    iput v4, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 1482
    sget-object v0, Lcom/htc/camera/component/CaptureBar;->PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CaptureBar;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1483
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1484
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1487
    invoke-virtual {p1}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling()V

    .line 1488
    invoke-virtual {p1}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling()V

    .line 1491
    :cond_1
    iput-boolean v4, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    goto :goto_0
.end method

.method private resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V
    .locals 6

    .prologue
    const v5, 0x7f080422

    const v4, 0x7f080421

    const v3, 0x7f0201fa

    .line 1506
    if-nez p1, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButtonIcon() - No button specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1512
    invoke-virtual {p1}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 1513
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-ne p1, v2, :cond_5

    .line 1515
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1518
    :pswitch_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1524
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1520
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1523
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    goto :goto_1

    .line 1527
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1528
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1546
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1531
    :cond_4
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 1542
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    goto :goto_2

    .line 1539
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    goto :goto_2

    .line 1550
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-ne p1, v2, :cond_8

    .line 1552
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 1555
    :pswitch_4
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1558
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080424

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    goto/16 :goto_0

    .line 1563
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1564
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    goto/16 :goto_0

    .line 1569
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-ne p1, v1, :cond_0

    .line 1571
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_3

    :pswitch_5
    goto/16 :goto_0

    .line 1574
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0201fe

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1575
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1579
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1580
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1531
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1552
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch

    .line 1571
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private resetCaptureButtons(Z)V
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 1496
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 1497
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButton(Lcom/htc/camera/widget/CaptureBarButton;Z)V

    .line 1498
    return-void
.end method

.method private setPrimaryButtonHighlightState(ZZ)V
    .locals 3

    .prologue
    const/16 v2, 0x384

    .line 1876
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPrimaryButtonHighlighted:Z

    if-ne v0, p1, :cond_0

    .line 1900
    :goto_0
    return-void

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1879
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_4

    .line 1881
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 1882
    if-eqz p1, :cond_2

    .line 1884
    if-eqz p2, :cond_1

    .line 1885
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1899
    :goto_1
    iput-boolean p1, p0, Lcom/htc/camera/component/CaptureBar;->m_IsPrimaryButtonHighlighted:Z

    goto :goto_0

    .line 1887
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 1891
    :cond_2
    if-eqz p2, :cond_3

    .line 1892
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_1

    .line 1894
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 1898
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz p1, :cond_5

    const v0, 0x7f020045

    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f02003f

    goto :goto_2
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1908
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$5;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1917
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$6;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1926
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$7;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1935
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$8;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1944
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/CaptureBar$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureBar$9;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1957
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1968
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$10;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CaptureBar$10;-><init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$11;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1993
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$12;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2003
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$13;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2028
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 2029
    if-eqz v0, :cond_0

    .line 2031
    iget-object v2, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->m_CameraModeSupportStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2032
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_CameraModeSupportStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2037
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$14;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2047
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$15;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CaptureBar$15;-><init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$16;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2068
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$17;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$17;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2082
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$18;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CaptureBar$18;-><init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$19;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2177
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$20;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$20;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2188
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_3

    .line 2190
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$21;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$21;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2204
    :goto_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$22;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$22;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2244
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/CaptureBar$23;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureBar$23;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 2255
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/CaptureBar$24;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureBar$24;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2301
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_2

    .line 2303
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/CaptureBar$25;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureBar$25;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2321
    :cond_2
    return-void

    .line 2201
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "setupPropertyChangedCallbacks() - m_EffectManager is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCaptureBar(Z)V
    .locals 2

    .prologue
    .line 2978
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->canShowCaptureBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2981
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "showCaptureBar() - Show capture bar"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2985
    :cond_0
    return-void
.end method

.method private showRecordingTimer(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 2354
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 2420
    :goto_0
    return-void

    .line 2358
    :cond_0
    if-nez p1, :cond_1

    .line 2360
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2367
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    .line 2369
    iget v0, v0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    move v2, v3

    .line 2377
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v5

    .line 2378
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2379
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f0e016b

    invoke-virtual {v1, v6}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2380
    invoke-virtual {v5}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2382
    if-eqz v2, :cond_3

    .line 2383
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2390
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2391
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2393
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v1, 0x7f0a027b

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 2395
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setRotation(F)V

    .line 2397
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 2419
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2386
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2387
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setRotation(F)V

    .line 2388
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 2401
    :cond_4
    if-eqz v2, :cond_5

    .line 2402
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2409
    :goto_4
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2410
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2411
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v1, 0x7f0a027c

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 2414
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setRotation(F)V

    .line 2415
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_3

    .line 2405
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2406
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setRotation(F)V

    .line 2407
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto/16 :goto_1
.end method

.method private showSelfTimer(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2428
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_1

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    if-nez p1, :cond_2

    .line 2434
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2435
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2438
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2442
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    .line 2443
    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2446
    const v2, 0x7f0a0280

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2447
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2448
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2456
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 2468
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2471
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 2472
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 2475
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v6}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2452
    :cond_3
    const v2, 0x7f0a0281

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2453
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2454
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2459
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v2, 0x7f02009e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2462
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v2, 0x7f02009f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2465
    :sswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v2, 0x7f02009d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2456
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private unlock3A()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2508
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    .line 2509
    if-eqz v0, :cond_0

    .line 2510
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->unlockAutoFocus(Lcom/htc/camera/Handle;)V

    .line 2511
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    .line 2514
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 2515
    if-eqz v0, :cond_1

    .line 2517
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_AecLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoExposure(Lcom/htc/camera/Handle;)V

    .line 2518
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    .line 2520
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_AecLockHandle:Lcom/htc/camera/Handle;

    .line 2521
    iput-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    .line 2522
    return-void
.end method

.method private updateButtonEnableStates()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2532
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 2533
    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    if-ne v0, v1, :cond_2

    .line 2535
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 2536
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    move-object v2, v1

    move-object v1, v0

    .line 2545
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v8

    .line 2547
    sget-object v7, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v7, v4

    .line 2607
    :goto_1
    if-nez v7, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    iput v4, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 2612
    invoke-direct {p0, v2}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2613
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v9, p0, Lcom/htc/camera/component/CaptureBar;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2616
    :cond_0
    invoke-virtual {v2, v7}, Lcom/htc/camera/widget/CaptureBarButton;->setEnabled(Z)V

    .line 2617
    if-eqz v7, :cond_9

    move v0, v5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    .line 2622
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v7, v4

    move v2, v4

    .line 2657
    :goto_3
    if-eqz v7, :cond_b

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setEnabled(Z)V

    .line 2658
    if-eqz v2, :cond_c

    move v0, v5

    :goto_5
    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    .line 2661
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    .line 2663
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 2665
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    :goto_6
    move v0, v4

    .line 2679
    :goto_7
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setEnabled(Z)V

    .line 2680
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_e

    :goto_8
    invoke-virtual {v1, v5}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    .line 2683
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestFocus()Z

    move-result v0

    .line 2684
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "updateButtonEnableStates() - Success: "

    aput-object v5, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, ", focusable: "

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v3}, Lcom/htc/camera/widget/CaptureBarButton;->isFocusable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, ", isFocused: "

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v3}, Lcom/htc/camera/widget/CaptureBarButton;->isFocused()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, ", isEnabled: "

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v3}, Lcom/htc/camera/widget/CaptureBarButton;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2685
    return-void

    .line 2540
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 2541
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 2551
    :pswitch_2
    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v7, v4

    .line 2552
    goto/16 :goto_1

    .line 2556
    :cond_3
    sget-object v7, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_3

    :pswitch_3
    move v0, v4

    :goto_9
    move v7, v0

    .line 2581
    goto/16 :goto_1

    :pswitch_4
    move v0, v3

    .line 2560
    goto :goto_9

    .line 2563
    :pswitch_5
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 2564
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 2565
    :goto_a
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v7

    sget-object v9, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v7, v9, :cond_4

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isNormalVideoScene()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v7, v0}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/camera/Resolution;->Video_QCIF_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {v7, v0}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_5
    move v0, v4

    .line 2573
    goto :goto_9

    .line 2564
    :cond_6
    const/4 v0, 0x0

    goto :goto_a

    .line 2584
    :pswitch_6
    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, v3, :cond_11

    iget v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v0, :cond_11

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    const-string v7, "Press Camera Button"

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    move v7, v4

    .line 2588
    goto/16 :goto_1

    :pswitch_7
    move v7, v3

    .line 2594
    goto/16 :goto_1

    .line 2596
    :pswitch_8
    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v7, v4

    .line 2597
    goto/16 :goto_1

    .line 2599
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/htc/camera/widget/CaptureBarButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_b
    move v7, v0

    .line 2600
    goto/16 :goto_1

    :cond_8
    move v0, v4

    .line 2599
    goto :goto_b

    :cond_9
    move v0, v6

    .line 2617
    goto/16 :goto_2

    .line 2625
    :pswitch_9
    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    move v7, v4

    move v2, v4

    .line 2626
    goto/16 :goto_3

    .line 2629
    :pswitch_a
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    :goto_c
    move v7, v0

    move v2, v3

    .line 2632
    goto/16 :goto_3

    .line 2635
    :pswitch_b
    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move v7, v4

    move v2, v4

    .line 2636
    goto/16 :goto_3

    .line 2640
    :cond_a
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_4

    move v7, v4

    move v2, v4

    .line 2646
    goto/16 :goto_3

    :pswitch_c
    move v7, v4

    move v2, v3

    .line 2643
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 2657
    goto/16 :goto_4

    .line 2658
    :cond_c
    if-eqz v7, :cond_d

    move v0, v5

    goto/16 :goto_5

    :cond_d
    move v0, v6

    goto/16 :goto_5

    .line 2668
    :pswitch_d
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v8, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5

    :pswitch_e
    goto/16 :goto_6

    :pswitch_f
    move v0, v3

    .line 2674
    goto/16 :goto_7

    :cond_e
    move v5, v6

    .line 2680
    goto/16 :goto_8

    :cond_f
    :pswitch_10
    move v0, v4

    goto :goto_c

    :cond_10
    move v7, v4

    move v2, v3

    goto/16 :goto_3

    :cond_11
    move v7, v3

    goto/16 :goto_1

    :cond_12
    move v0, v3

    goto/16 :goto_9

    .line 2547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 2622
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_a
        :pswitch_1
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_9
    .end packed-switch

    .line 2665
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch

    .line 2556
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2640
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch

    .line 2668
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private updateCaptureButtonFunctions()V
    .locals 11

    .prologue
    const v10, 0x7f0a0267

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2694
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "updateCaptureButtonFunctions() - No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    :goto_0
    return-void

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 2702
    if-nez v0, :cond_1

    .line 2704
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "updateCaptureButtonFunctions() - No capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2709
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 2711
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v1, v5, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v2, v4

    .line 2727
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_2

    .line 2729
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 2730
    instance-of v6, v1, Lcom/htc/camera/effect/VideoSceneBase;

    if-eqz v6, :cond_2

    instance-of v1, v1, Lcom/htc/camera/effect/an;

    if-nez v1, :cond_2

    .line 2736
    :cond_2
    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v6

    .line 2737
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v7

    .line 2738
    iget-object v1, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v6, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_a

    move v1, v3

    .line 2739
    :goto_2
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v6, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_b

    move v0, v3

    .line 2740
    :goto_3
    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 2743
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_3

    .line 2745
    if-eqz v2, :cond_c

    .line 2746
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2752
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_4

    .line 2754
    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isNormalVideoScene()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2756
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->PauseResumeRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2757
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_d

    .line 2759
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2760
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 2773
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_6

    .line 2775
    if-eqz v2, :cond_11

    .line 2777
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isNormalVideoScene()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2779
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2780
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_f

    .line 2782
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2783
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 2884
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCaptureButtonFunctions() - m_BottomSecondaryButton\'s tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v2}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_7

    .line 2888
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 2901
    :cond_7
    :goto_7
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    .line 2903
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2904
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v1, 0x7f0e0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    .line 2906
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 2908
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "updateCaptureButtonFunctions() - update primary button location"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isCenterCaptureButtons()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0489

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_8
    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2910
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2914
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2915
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2916
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    .line 2919
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V

    goto/16 :goto_0

    :pswitch_2
    move v2, v3

    .line 2719
    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 2738
    goto/16 :goto_2

    :cond_b
    move v0, v4

    .line 2739
    goto/16 :goto_3

    .line 2748
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2763
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_5

    .line 2767
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2768
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_5

    .line 2786
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2790
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2791
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2794
    :cond_11
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2796
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2797
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2798
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    goto/16 :goto_6

    .line 2800
    :cond_12
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2802
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2803
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2804
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    goto/16 :goto_6

    .line 2808
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2809
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2813
    :cond_14
    if-eqz v1, :cond_17

    .line 2816
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_15

    .line 2817
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2820
    :cond_15
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_16

    .line 2822
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2823
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2827
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_6

    .line 2829
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2830
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2833
    :cond_17
    if-eqz v0, :cond_1e

    .line 2836
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_18

    .line 2837
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2840
    :cond_18
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_19

    .line 2842
    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isNormalVideoScene()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2844
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->PauseResumeRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2845
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_1a

    .line 2847
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2848
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 2861
    :cond_19
    :goto_9
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_6

    .line 2863
    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isNormalVideoScene()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2865
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2866
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_1c

    .line 2868
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 2869
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v7, v4}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    goto/16 :goto_6

    .line 2851
    :cond_1a
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_9

    .line 2855
    :cond_1b
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2856
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_9

    .line 2872
    :cond_1c
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2876
    :cond_1d
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2877
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_6

    .line 2882
    :cond_1e
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "updateCaptureButtonFunctions() - Neither photo nor video modes are supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2891
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v10}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a026a

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    invoke-static {v0, v4, v4, v1, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    goto/16 :goto_7

    .line 2895
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v10}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a048a

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    invoke-static {v0, v4, v4, v1, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    goto/16 :goto_7

    .line 2909
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0488

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_8

    .line 2711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2888
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateDefaultCaptureButtonStyle()V
    .locals 5

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 2929
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    .line 2930
    const/4 v1, 0x0

    .line 2931
    iget-boolean v3, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    iget-boolean v4, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 2932
    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    :goto_0
    move-object v1, v0

    .line 2935
    :cond_0
    if-nez v1, :cond_1

    .line 2937
    sget-object v3, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, v1

    .line 2949
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v1, :cond_2

    .line 2951
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 2952
    iget-object v1, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2954
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2955
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 2964
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_DefaultCaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    if-eq v1, v0, :cond_3

    .line 2966
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateDefaultCaptureButtonStyle() - Change default style to "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2967
    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DefaultCaptureButtonStyle:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 2968
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyleHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 2969
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->changeCaptureButtonStyle(Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;)V

    .line 2971
    :cond_3
    return-void

    .line 2932
    :cond_4
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Video:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    goto :goto_0

    .line 2941
    :pswitch_0
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    goto :goto_1

    .line 2957
    :cond_5
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    goto :goto_2

    .line 2960
    :cond_6
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Video:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    goto :goto_2

    .line 2937
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateMainIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3018
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 3088
    :goto_0
    return-void

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3024
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;->icon:Landroid/graphics/drawable/Drawable;

    .line 3075
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3076
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->isCenterCaptureButtons()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a048b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3077
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3078
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 3081
    if-eqz v0, :cond_4

    .line 3083
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3084
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v5, v5}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 3027
    :cond_1
    const/4 v1, 0x0

    .line 3028
    sget-object v0, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_1

    .line 3032
    :pswitch_0
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 3036
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 3037
    if-eqz v0, :cond_2

    .line 3039
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v0, v2

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    .line 3042
    :sswitch_0
    const v0, 0x7f020233

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 3045
    :sswitch_1
    const v0, 0x7f020234

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 3048
    :sswitch_2
    const v0, 0x7f020232

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 3076
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a026c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    .line 3087
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 3028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 3032
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3039
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 509
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureButtonStyleHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    invoke-super {p0}, Lcom/htc/camera/ICaptureBar;->deinitializeOverride()V

    .line 518
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 370
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lcom/htc/camera/ICaptureBar;->handleMessage(Landroid/os/Message;)V

    .line 415
    :goto_0
    :pswitch_0
    return-void

    .line 388
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 389
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/widget/CaptureBarButton;

    .line 390
    aget-object v0, v0, v3

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 391
    if-eqz v1, :cond_0

    .line 393
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 396
    :pswitch_2
    invoke-direct {p0, v1, v3}, Lcom/htc/camera/component/CaptureBar;->onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_0

    .line 402
    :pswitch_3
    invoke-direct {p0, v1, v3}, Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
    .end packed-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hideIndicator(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 563
    if-nez p1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 572
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 576
    if-gez v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V

    goto :goto_0
.end method

.method public hideRecordingTimer(Lcom/htc/camera/Handle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 595
    if-nez p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideRecordingTimer() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideRecordingTimer() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 610
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 611
    if-gez v2, :cond_3

    .line 613
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "hideRecordingTimer() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    move-object v1, v0

    .line 622
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 624
    invoke-direct {p0, v4, v4}, Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V

    .line 625
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 626
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 627
    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CaptureBar;->onElapsedRecordingSecondsChanged(J)V

    goto :goto_0

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_1

    .line 631
    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V

    goto :goto_0

    .line 634
    :cond_6
    if-eqz v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    .line 637
    iget-boolean v2, v0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->isHighlighted:Z

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V

    .line 638
    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-super {p0}, Lcom/htc/camera/ICaptureBar;->initializeOverride()V

    .line 653
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 654
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 655
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 656
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 657
    const-class v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 659
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 662
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 663
    const v2, 0x7f0e0160

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 664
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0165

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 665
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0161

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 666
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0162

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 667
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorContainer:Landroid/view/View;

    .line 668
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0171

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorImageView:Landroid/widget/ImageView;

    .line 671
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e016a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 672
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e016e

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e016f

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    .line 674
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e016d

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    .line 677
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v2, 0x7f0e0166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 678
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e0167

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    .line 679
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e0168

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e0169

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    .line 683
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 686
    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget-object v3, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 690
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateCaptureButtonFunctions()V

    .line 695
    invoke-direct {p0, v1}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V

    .line 696
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    .line 699
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget v0, v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 704
    :cond_1
    new-instance v0, Lcom/htc/camera/component/CaptureBar$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CaptureBar$3;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    .line 798
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 799
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v3, Lcom/htc/camera/component/CaptureBar$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/CaptureBar$4;-><init>(Lcom/htc/camera/component/CaptureBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/widget/CaptureBarButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 819
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 820
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 833
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateDefaultCaptureButtonStyle()V

    .line 836
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V

    .line 837
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 840
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->setupEventHandlers()V

    .line 841
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V

    .line 844
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V

    .line 847
    invoke-direct {p0, v1}, Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V

    .line 848
    return-void

    .line 689
    :cond_2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sget-object v3, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 700
    goto :goto_1
.end method

.method public final invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 857
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 865
    :cond_2
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 1146
    instance-of v0, p1, Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1148
    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 1149
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureBar;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 1151
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/ICaptureBar;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1152
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1252
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CaptureBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1261
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->showSelfTimer(Z)V

    .line 1263
    :cond_2
    return-void
.end method

.method public restoreCaptureBarVisibility(Lcom/htc/camera/Handle;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1611
    if-nez p1, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureBarVisibility() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :goto_0
    return-void

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 1621
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v3, "restoreCaptureBarVisibility() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1622
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureBarVisibility() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1627
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->canShowCaptureBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1628
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1630
    :cond_3
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_4

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final restoreCaptureIcon(Lcom/htc/camera/Handle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1682
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 1685
    if-nez p1, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureIcon() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    if-nez v0, :cond_2

    .line 1692
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureIcon() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1697
    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    .line 1699
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$ICaptureBar$CaptureButton:[I

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->button:Lcom/htc/camera/ICaptureBar$CaptureButton;

    invoke-virtual {v0}, Lcom/htc/camera/ICaptureBar$CaptureButton;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1702
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    .line 1710
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    move v1, v2

    .line 1711
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1713
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureIcon() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1705
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    move v1, v3

    .line 1710
    goto :goto_2

    .line 1717
    :cond_4
    iget-object v4, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v5, "restoreCaptureIcon() - Handle : "

    invoke-static {v4, v5, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1720
    if-eqz v1, :cond_0

    .line 1722
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 1724
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "restoreCaptureIcon() - Change to default icon"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_0

    .line 1727
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 1735
    :goto_3
    :pswitch_2
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    goto/16 :goto_0

    .line 1731
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 1732
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->resetCaptureButtonIcon(Lcom/htc/camera/widget/CaptureBarButton;)V

    goto :goto_3

    .line 1735
    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_4

    .line 1738
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v1, :cond_0

    .line 1740
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    .line 1741
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "restoreCaptureIcon() - Change to icon \'"

    const-string v5, "\'"

    invoke-static {v1, v4, v0, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1742
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$ICaptureBar$CaptureButton:[I

    iget-object v4, v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->button:Lcom/htc/camera/ICaptureBar$CaptureButton;

    invoke-virtual {v4}, Lcom/htc/camera/ICaptureBar$CaptureButton;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 1745
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget v4, v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_7

    :goto_5
    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 1748
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 1747
    goto :goto_5

    .line 1752
    :pswitch_5
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    iget v4, v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    :goto_6
    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 1753
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    # getter for: Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;->access$500(Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 1752
    goto :goto_6

    .line 1699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1727
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1742
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCaptureBarVisibility(ZI)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1766
    new-instance v2, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;

    invoke-direct {v2, p1, p2}, Lcom/htc/camera/component/CaptureBar$CaptureBarVisibilityHandle;-><init>(ZI)V

    .line 1767
    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->m_CaptureBarVisibilityHandles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    iget-object v3, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "setCaptureBarVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1772
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->canShowCaptureBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1773
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V

    .line 1777
    :goto_1
    return-object v2

    :cond_0
    move v0, v1

    .line 1773
    goto :goto_0

    .line 1775
    :cond_1
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1818
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 1821
    if-nez p1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureIcon() - Invalid capture button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :goto_0
    return-object v0

    .line 1828
    :cond_0
    new-instance v3, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;

    invoke-direct {v3, p1, p2, p3}, Lcom/htc/camera/component/CaptureBar$CaptureButtonIconHandle;-><init>(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)V

    .line 1829
    sget-object v4, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$ICaptureBar$CaptureButton:[I

    invoke-virtual {p1}, Lcom/htc/camera/ICaptureBar$CaptureButton;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1838
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureIcon() - Invalid capture button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomPhotoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v4, "setCaptureIcon() - Handle : "

    invoke-static {v0, v4, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1844
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    .line 1846
    sget-object v0, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$ICaptureBar$CaptureButton:[I

    invoke-virtual {p1}, Lcom/htc/camera/ICaptureBar$CaptureButton;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_2
    move-object v0, v3

    .line 1868
    goto :goto_0

    .line 1835
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_CustomVideoCaptureIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1849
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1851
    iget-object v4, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 1852
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v6}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    .line 1853
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, p2}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 1851
    goto :goto_3

    .line 1857
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    if-ne v0, v4, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setAutoColorOn(Z)V

    .line 1860
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, v6}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    .line 1861
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, p2}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1859
    goto :goto_4

    .line 1829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1846
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 2994
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 2995
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "showIndicator() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const/4 v0, 0x0

    .line 3008
    :goto_0
    return-object v0

    .line 3002
    :cond_0
    new-instance v0, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;

    invoke-direct {v0, p1, p2}, Lcom/htc/camera/component/CaptureBar$IndicatorHandle;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 3003
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "showIndicator() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3004
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_MainIndicatorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V

    goto :goto_0
.end method

.method public showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 2330
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 2333
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v1, "showRecordingTimer() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    const/4 v0, 0x0

    .line 2349
    :goto_0
    return-object v0

    .line 2340
    :cond_0
    new-instance v1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    invoke-direct {v1, p1, p2}, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;-><init>(Ljava/lang/CharSequence;I)V

    .line 2341
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2344
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 2345
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V

    .line 2346
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 2349
    goto :goto_0

    .line 2344
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public updateRecordingTimer(Lcom/htc/camera/Handle;Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3097
    if-nez p1, :cond_0

    .line 3099
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Null handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    :goto_0
    return v0

    .line 3102
    :cond_0
    instance-of v1, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    if-nez v1, :cond_1

    .line 3104
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3109
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 3112
    check-cast p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    .line 3113
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3114
    if-gez v1, :cond_2

    .line 3116
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3119
    :cond_2
    iput-object p2, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->text:Ljava/lang/CharSequence;

    .line 3122
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    .line 3124
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 3125
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 3124
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3133
    if-nez p1, :cond_0

    .line 3135
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Null handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    :goto_0
    return v0

    .line 3138
    :cond_0
    instance-of v2, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    if-nez v2, :cond_1

    .line 3140
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3145
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureBar;->threadAccessCheck()V

    .line 3148
    check-cast p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;

    .line 3149
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3150
    if-gez v2, :cond_2

    .line 3152
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingTimer() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3155
    :cond_2
    iget-boolean v0, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->isHighlighted:Z

    if-ne v0, p2, :cond_3

    move v0, v1

    .line 3156
    goto :goto_0

    .line 3157
    :cond_3
    iput-boolean p2, p1, Lcom/htc/camera/component/CaptureBar$RecordingTimerHandle;->isHighlighted:Z

    .line 3160
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_4

    .line 3161
    invoke-direct {p0, p2, v1}, Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V

    :cond_4
    move v0, v1

    .line 3162
    goto :goto_0
.end method
