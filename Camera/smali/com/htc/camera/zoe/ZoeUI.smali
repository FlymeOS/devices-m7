.class final Lcom/htc/camera/zoe/ZoeUI;
.super Lcom/htc/camera/zoe/IZoeController;
.source "ZoeUI.java"


# instance fields
.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_BaseLayout:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureDisablingHandle:Lcom/htc/camera/Handle;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private final m_CaptureIconDrawable:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

.field private m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field private m_CaptureTimer:Lcom/htc/camera/StopWatch;

.field private m_Controller:Lcom/htc/camera/zoe/ZoeController;

.field private m_DisableCaptureHandle:Lcom/htc/camera/Handle;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_HasAudioFocus:Z

.field private m_IsCaptureButtonPressedInVideoMode:Z

.field private m_IsCaptureButtonReleasedBeforeCapture:Z

.field private m_IsCaptureStartSucceeded:Z

.field private m_IsStoppingCapturing:Z

.field private m_IsUIInitialized:Z

.field private m_IsWirelessDisplayGestureDisabled:Z

.field private final m_IsZoeActiveChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_NeedShowSDCardToast:Z

.field private m_PhotoSavingStartedTime:J

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

.field private final m_ReadSDCardClassValue:Ljava/lang/Runnable;

.field private m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

.field private m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

.field private m_RecordingLockedIndicatorDrawable:Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;

.field private m_RecordingTimerHandle:Lcom/htc/camera/Handle;

.field private m_SDCardUI:Lcom/htc/camera/io/e;

.field private m_SDCardValue:I

.field private m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

.field private m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

.field private m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 357
    const-string v0, "Zoe UI Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/zoe/IZoeController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 111
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 112
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    .line 124
    new-instance v0, Lcom/htc/camera/zoe/ZoeUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeUI$1;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsZoeActiveChangedCallback:Lcom/htc/camera/property/c;

    .line 143
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z

    .line 148
    new-instance v0, Lcom/htc/camera/zoe/ZoeUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeUI$2;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ReadSDCardClassValue:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    invoke-direct {v0, p1}, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureIconDrawable:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    .line 363
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->disableFakeUIRotation()V

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/zoe/ZoeController;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BaseLayout:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/zoe/ZoeUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showProgressIndicator()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureButtonPressed()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureButtonReleased()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/camera/zoe/ZoeUI;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/RecordingState;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeUI;->broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/zoe/ZoeUI;I)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureStartSucceeded:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/camera/zoe/ZoeUI;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureStartSucceeded:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/ICaptureBar;)Lcom/htc/camera/ICaptureBar;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/camera/zoe/ZoeUI;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureCompleted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->stopCapture()V

    return-void
.end method

.method static synthetic access$3302(Lcom/htc/camera/zoe/ZoeUI;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    return p1
.end method

.method static synthetic access$3402(Lcom/htc/camera/zoe/ZoeUI;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->initializeUI()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/zoe/ZoeUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/camera/zoe/ZoeUI;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showIndicatorToast()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showSDCardWarningToast()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onVideoPauseButtonPressed()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onVideoSnapshotButtonPressed()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/property/c;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsZoeActiveChangedCallback:Lcom/htc/camera/property/c;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/widget/ZoeProgressIndicator;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/zoe/ZoeUI;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/camera/zoe/ZoeUI;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V
    .locals 3

    .prologue
    .line 2122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.ZOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2123
    const-string v1, "RecordingState"

    invoke-virtual {p1}, Lcom/htc/camera/RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2125
    return-void
.end method

.method private closeRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideRecordingTimer(Lcom/htc/camera/Handle;)V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    .line 376
    :cond_0
    const/16 v0, 0x2725

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "closeRecordingUI() - Hide pause and snapshot buttons"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V

    .line 383
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V

    .line 386
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideVideoPausedToast()V

    .line 388
    return-void
.end method

.method private enterZoeMode(IZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->threadAccessCheck()V

    .line 415
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v2, "enterZoeMode() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 519
    :goto_0
    return v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "enterZoeMode() - Zoe mode is already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 423
    goto :goto_0

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "enterZoeMode() - No ZoeController, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 431
    goto :goto_0

    .line 435
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v3, :cond_3

    .line 437
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterZoeMode() - Current camera mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v3, :cond_4

    .line 442
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterZoeMode() - Current camera type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 443
    goto/16 :goto_0

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v3, "enterZoeMode("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v0, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    and-int/lit8 v3, p1, -0x9

    invoke-virtual {v0, v3}, Lcom/htc/camera/zoe/ZoeController;->enter(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 456
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_5

    .line 457
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->stopNotesRecording()V

    .line 473
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    if-nez v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v3, "enterZoeMode() - Request audio focus"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 477
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    .line 481
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 482
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v3, :cond_7

    .line 483
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v3}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 487
    :cond_7
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 490
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 493
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->lockZoom()V

    .line 496
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 497
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->initializeUI()V

    .line 500
    :cond_8
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showIndicatorToast()V

    .line 503
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z

    .line 504
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showSDCardWarningToast()V

    .line 507
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showProgressIndicator()V

    .line 510
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_9

    .line 512
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v3, Lcom/htc/camera/ICaptureBar$CaptureButton;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButton;

    const v4, 0x7f020209

    invoke-virtual {p0, v4}, Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    :cond_9
    move v0, v2

    .line 517
    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 519
    goto/16 :goto_0
.end method

.method private exitZoeMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->threadAccessCheck()V

    .line 534
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Zoe mode is not entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - No ZoeController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "exitZoeMode("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/zoe/ZoeController;->exit(I)V

    .line 558
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "exitZoeMode() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 562
    iput-boolean v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    .line 566
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideIndicatorToast()V

    .line 569
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideProgressIndicator()V

    .line 572
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 575
    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 581
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 582
    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeCaptureIconHandle:Lcom/htc/camera/Handle;

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BaseLayout:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_6

    .line 587
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BaseLayout:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 590
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 591
    iput-boolean v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    .line 594
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_7

    .line 597
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 598
    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 602
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_8

    .line 604
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 605
    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 609
    :cond_8
    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 612
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 613
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 619
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 622
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->unlockZoom()V

    goto/16 :goto_0
.end method

.method private hideIndicatorToast()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 787
    :cond_0
    return-void
.end method

.method private hideProgressIndicator()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 797
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 798
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 799
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 800
    new-instance v1, Lcom/htc/camera/zoe/ZoeUI$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeUI$3;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 808
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 809
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 810
    const/16 v0, 0x2738

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    goto :goto_0
.end method

.method private hideVideoPausedToast()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideVideoPausedToast() - No IBubbleToastManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideVideoPausedToast() - Video paused toast handle is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e00e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 1160
    const v0, 0x7f0e011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 1161
    const v0, 0x7f0e011d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 1162
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0201fe

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1165
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v1, Lcom/htc/camera/zoe/ZoeUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeUI$18;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1179
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v1, Lcom/htc/camera/zoe/ZoeUI$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeUI$19;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsUIInitialized:Z

    .line 1198
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->updateProgressIndicatorRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private isLowQualitySDCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1947
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v2, "isLowQualitySDCard() - Storage is internal, skip"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1971
    :goto_0
    return v0

    .line 1953
    :cond_0
    iget v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    if-nez v0, :cond_3

    .line 1955
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v2, "isLowQualitySDCard() - Check SD class value from worker thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 1958
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ReadSDCardClassValue:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ReadSDCardClassValue:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    move v0, v1

    .line 1961
    goto :goto_0

    .line 1964
    :cond_3
    iget v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_4

    .line 1966
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLowQualitySDCard() - Low quality SD card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1971
    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1207
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 1234
    :cond_0
    :goto_0
    return v3

    .line 1211
    :cond_1
    const-class v0, Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/ZoeController;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    .line 1212
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1219
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    .line 1220
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$20;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/zoe/ZoeUI$20;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToController() - Fail to link properties and events"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v3, v6

    .line 1234
    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadRunning()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadRunning() - Enter Zoe mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->enterZoeMode(IZ)Z

    .line 1248
    :cond_0
    return-void
.end method

.method private onCaptureButtonLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1361
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    sget-object v1, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1369
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonLongPressed() - Not taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1375
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1378
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_3

    .line 1380
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showRecordingUI()V

    .line 1381
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->updateRecordingTimer()V

    .line 1382
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideProgressIndicator()V

    .line 1383
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setProgressPercentage(I)V

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    const v1, 0x7f020221

    invoke-virtual {p0, v1}, Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/ICaptureBar;->showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1393
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonLongPressed() - Capture is not started yet, show recording UI later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCaptureButtonPressed()V
    .locals 3

    .prologue
    const/16 v2, 0x272e

    .line 1402
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1406
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonPressed() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonPressedInVideoMode:Z

    if-nez v0, :cond_3

    .line 1413
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonPressed() - Press capture button in video capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonPressedInVideoMode:Z

    .line 1416
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/camera/zoe/ZoeUI;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0
.end method

.method private onCaptureButtonReleased()V
    .locals 6

    .prologue
    const/16 v5, 0x2715

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x272e

    .line 1426
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :cond_2
    sget-object v1, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1441
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Not taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0, v3}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1443
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1448
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    invoke-virtual {p0, v3}, Lcom/htc/camera/zoe/ZoeUI;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Change to single shot mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1456
    invoke-virtual {p0, v3}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1457
    invoke-virtual {p0, v5}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1458
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1461
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 1464
    iput-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1470
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 1472
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 1473
    iput-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1477
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_5

    .line 1479
    sget-object v1, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1483
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonReleased() - Release button before capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    goto/16 :goto_0

    .line 1489
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonPressedInVideoMode:Z

    if-eqz v0, :cond_0

    .line 1491
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->stopCapture()V

    goto/16 :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1479
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureCompleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1256
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 1257
    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1260
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1261
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1264
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->closeRecordingUI()V

    .line 1267
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 1270
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 1279
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureDisablingHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureDisablingHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 1289
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureDisablingHandle:Lcom/htc/camera/Handle;

    .line 1293
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v0, :cond_3

    .line 1294
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    invoke-virtual {v0, v5}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setProgressPercentage(I)V

    .line 1297
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 1299
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 1300
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1302
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 1304
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 1305
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ZoeIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1309
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_6

    .line 1311
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1313
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    .line 1317
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_PhotoSavingStartedTime:J

    sub-long/2addr v0, v2

    .line 1318
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v3, "onCaptureCompleted() - File saving time:"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1319
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v2}, Lcom/htc/camera/property/a;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide v2, 0x2540be400L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1321
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    if-nez v0, :cond_7

    .line 1322
    const-class v0, Lcom/htc/camera/io/e;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/e;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    .line 1323
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    if-eqz v0, :cond_9

    .line 1325
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Notify SD card performance low: Zoe"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    invoke-virtual {v0}, Lcom/htc/camera/io/e;->notifySDCardPerformanceLow()Z

    .line 1333
    :cond_8
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, v5}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 1336
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1337
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1340
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v1, 0x271f

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1343
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1344
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1345
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    iput-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 1346
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonPressedInVideoMode:Z

    .line 1347
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    .line 1348
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    .line 1349
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1350
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->isRecordingMode:Lcom/htc/camera/property/a;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1351
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->cancelPendingCapture()V

    .line 1352
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1353
    return-void

    .line 1329
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - Cannot find ISDCardUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCaptureModeChanged(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1500
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureModeChanged("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1502
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, p1, :cond_0

    .line 1504
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 1505
    sget-object v0, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    invoke-virtual {p1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1570
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1519
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    if-nez v0, :cond_5

    .line 1532
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_3

    .line 1541
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingLockedIndicatorDrawable:Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;

    if-nez v0, :cond_2

    .line 1542
    new-instance v0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingLockedIndicatorDrawable:Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;

    .line 1543
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingLockedIndicatorDrawable:Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/ICaptureBar;->showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1549
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureModeChanged() - Show pause and snapshot buttons"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 1551
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v2, 0x7f02020d

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1552
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v3, v3}, Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V

    .line 1553
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSupportZoeInVideoCapture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1554
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v3, v3}, Lcom/htc/camera/zoe/ZoeUI;->showUI(Landroid/view/View;ZZ)V

    .line 1555
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/camera/zoe/ZoeUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1556
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/camera/zoe/ZoeUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1557
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 1561
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isRecordingMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1565
    :goto_1
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    goto :goto_0

    .line 1564
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureModeChanged() - Capture is stopping, won\'t show recording UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCaptureStarted(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/Duration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1578
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_0

    .line 1579
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_1

    .line 1581
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_2

    .line 1583
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 1586
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureStartSucceeded:Z

    .line 1589
    sget-object v0, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V

    .line 1592
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 1595
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_4

    .line 1600
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureIconDrawable:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    iput v2, v0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->percentage:I

    .line 1617
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z

    if-eqz v0, :cond_5

    .line 1619
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStarted() - Capture button is released before capturing, stop capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->stopCapture()V

    .line 1638
    :goto_1
    return-void

    .line 1613
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStarted() - No ICaptureBar interface to change capture icon"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1627
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showRecordingUI()V

    .line 1628
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->updateRecordingTimer()V

    .line 1629
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideProgressIndicator()V

    .line 1630
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v0, :cond_6

    .line 1631
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setProgressPercentage(I)V

    .line 1632
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_7

    .line 1633
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    const v1, 0x7f020221

    invoke-virtual {p0, v1}, Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1637
    :cond_7
    const/16 v0, 0x2742

    sget-object v1, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {p0, p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;)Z

    goto :goto_1
.end method

.method private onVideoPauseButtonPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1699
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1705
    invoke-direct {p0, v4, v3}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 1706
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1709
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v1, 0x2726

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1717
    invoke-direct {p0, v4, v3}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 1718
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 1721
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v1, 0x2727

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0
.end method

.method private onVideoSnapshotButtonPressed()V
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1736
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    .line 1738
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v1, 0x2729

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1740
    :cond_0
    return-void
.end method

.method private setSDCardClass(I)V
    .locals 1

    .prologue
    .line 1788
    if-gtz p1, :cond_0

    .line 1789
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    .line 1794
    :goto_0
    return-void

    .line 1791
    :cond_0
    iput p1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I

    .line 1792
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showSDCardWarningToast()V

    goto :goto_0
.end method

.method private setSecondaryButtonsEnabled(IZ)V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 1801
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsUIInitialized:Z

    if-nez v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryButtonsEnabled UI not been initialized!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    const/4 v0, 0x0

    .line 1806
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v3, :cond_2

    .line 1808
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v4, "setSecondaryButtonsEnabled() - VideoPauseButton: "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, p2}, Lcom/htc/camera/widget/CaptureBarButton;->setEnabled(Z)V

    .line 1810
    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPauseButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    move v0, v3

    .line 1813
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1815
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v4, "setSecondaryButtonsEnabled() - VideoSnapshotButton: "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1816
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0, p2}, Lcom/htc/camera/widget/CaptureBarButton;->setEnabled(Z)V

    .line 1817
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoSnapshotButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz p2, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setAlpha(F)V

    move v0, v3

    .line 1821
    :cond_3
    if-nez v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryButtonsEnabled() - Unknown type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1810
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1817
    goto :goto_2
.end method

.method private showAudioResourceBlockedWarningToast(I)V
    .locals 2

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 2064
    if-nez v0, :cond_2

    .line 2066
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "showWarningToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2070
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 2071
    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 2073
    :cond_3
    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showIndicatorToast()V
    .locals 0

    .prologue
    .line 1781
    return-void
.end method

.method private showProcessKilledWarningToast()V
    .locals 2

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    :cond_0
    :goto_0
    return-void

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 2089
    if-nez v0, :cond_2

    .line 2091
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "showWarningToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2096
    :cond_2
    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showProgressIndicator()V
    .locals 6

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    const/16 v2, 0x2738

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private showProgressIndicatorDelayed()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1841
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-nez v0, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1844
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1845
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1846
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1847
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1848
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1849
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private showRecordingUI()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1858
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_0

    .line 1873
    :goto_0
    return-void

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/ICaptureBar;->showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    .line 1865
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1867
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 1868
    iput-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    .line 1872
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButton;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButton;

    const v2, 0x7f020102

    invoke-virtual {p0, v2}, Lcom/htc/camera/zoe/ZoeUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showSDCardWarningToast()V
    .locals 2

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->isLowQualitySDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z

    if-eqz v0, :cond_0

    .line 1893
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 1894
    if-nez v0, :cond_2

    .line 1896
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "showWarningToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1901
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z

    .line 1902
    const v1, 0x7f080398

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showVideoPausedToast()V
    .locals 2

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_1

    .line 2106
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "showVideoPausedToast() - No IBubbleToastManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f08040c

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_VideoPausedToastHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private stopCapture()V
    .locals 4

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    :goto_0
    return-void

    .line 1916
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    if-eqz v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture() - Already stopping"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1923
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->closeRecordingUI()V

    .line 1926
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1928
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1931
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    .line 1934
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    sget-object v2, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1935
    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, v1, :cond_3

    .line 1939
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "SavingZoe"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->disableCapture(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureDisablingHandle:Lcom/htc/camera/Handle;

    .line 1942
    :cond_3
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    goto :goto_0

    .line 1930
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture() - No controller to stop capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unlinkFromController()V
    .locals 3

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    if-nez v0, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    .line 1753
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$21;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/zoe/ZoeUI$21;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "unlinkFromController() - Fail to unlink properties and events"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_Controller:Lcom/htc/camera/zoe/ZoeController;

    goto :goto_0
.end method

.method private updateCountdownTimer(I)Z
    .locals 6

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    .line 1982
    const-wide/16 v2, 0x96

    add-long/2addr v2, v0

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 1983
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureIconDrawable:Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;

    iput v2, v3, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->percentage:I

    .line 1984
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v3, :cond_0

    .line 1985
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v3, v4}, Lcom/htc/camera/ICaptureBar;->invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V

    .line 1988
    :cond_0
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1f4

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    .line 1989
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    invoke-virtual {v3, v2}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setProgressPercentage(I)V

    .line 1992
    :cond_1
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProgressIndicatorRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    if-eqz v0, :cond_0

    .line 2002
    sget-object v0, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 2005
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Bottom:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setShadowPosition(Lcom/htc/camera/widget/ShadowPosition;)V

    goto :goto_0

    .line 2008
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Right:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setShadowPosition(Lcom/htc/camera/widget/ShadowPosition;)V

    goto :goto_0

    .line 2011
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Top:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setShadowPosition(Lcom/htc/camera/widget/ShadowPosition;)V

    goto :goto_0

    .line 2014
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProgressIndicator:Lcom/htc/camera/widget/ZoeProgressIndicator;

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Left:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setShadowPosition(Lcom/htc/camera/widget/ShadowPosition;)V

    goto :goto_0

    .line 2002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateRecordingTimer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2026
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    .line 2027
    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2028
    div-int/lit8 v3, v2, 0x3c

    .line 2029
    rem-int/lit8 v4, v2, 0x3c

    .line 2032
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2033
    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v4, :cond_0

    .line 2035
    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v4, v5, v3}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Ljava/lang/CharSequence;)Z

    .line 2036
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v3, v4, v9}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 2040
    :cond_0
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 2041
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2042
    const/16 v2, 0x2725

    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 2045
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 2046
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->unlinkFromController()V

    .line 400
    invoke-super {p0}, Lcom/htc/camera/zoe/IZoeController;->deinitializeOverride()V

    .line 401
    return-void
.end method

.method public enter(I)Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/zoe/ZoeUI;->enterZoeMode(IZ)Z

    move-result v0

    return v0
.end method

.method public exit(I)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeUI;->exitZoeMode(I)V

    .line 529
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v2, 0x2715

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 772
    invoke-super {p0, p1}, Lcom/htc/camera/zoe/IZoeController;->handleMessage(Landroid/os/Message;)V

    .line 775
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 634
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureCompleted()V

    goto :goto_0

    .line 638
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureModeChanged(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto :goto_0

    .line 643
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 644
    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    aget-object v0, v0, v5

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureStarted(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/Duration;)V

    goto :goto_0

    .line 649
    :sswitch_4
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    if-nez v0, :cond_0

    .line 650
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureModeChanged(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto :goto_0

    .line 654
    :sswitch_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    .line 655
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/RecordingState;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    sget-object v2, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 661
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 662
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showVideoPausedToast()V

    .line 665
    const/16 v0, 0x2725

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 672
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    goto :goto_0

    .line 676
    :pswitch_1
    sget-object v1, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->start()V

    .line 680
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->hideVideoPausedToast()V

    .line 683
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->updateRecordingTimer()V

    .line 686
    invoke-direct {p0, v6, v5}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    goto/16 :goto_0

    .line 694
    :sswitch_6
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 696
    sget-object v1, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 700
    :pswitch_2
    invoke-direct {p0, v5, v5}, Lcom/htc/camera/zoe/ZoeUI;->setSecondaryButtonsEnabled(IZ)V

    goto/16 :goto_0

    .line 707
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->onCaptureButtonLongPressed()V

    goto/16 :goto_0

    .line 711
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showProgressIndicatorDelayed()V

    goto/16 :goto_0

    .line 716
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->updateCountdownTimer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x96

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto/16 :goto_0

    .line 722
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->updateRecordingTimer()V

    goto/16 :goto_0

    .line 730
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->onEnterZoeFailed()V

    goto/16 :goto_0

    .line 734
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 735
    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->setSDCardClass(I)V

    goto/16 :goto_0

    .line 739
    :sswitch_d
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 740
    const/16 v0, 0x2719

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, p0, v0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 741
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    sget-object v3, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    .line 742
    invoke-virtual {p0, v2}, Lcom/htc/camera/zoe/ZoeUI;->removeMessages(I)V

    .line 743
    :cond_2
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z

    .line 745
    sget-object v0, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V

    .line 747
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_PhotoSavingStartedTime:J

    goto/16 :goto_0

    .line 753
    :sswitch_e
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_RecordingCaptureIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_3

    .line 757
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v2, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v2, :cond_4

    const v0, 0x7f080174

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 759
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->closeRecordingUI()V

    goto/16 :goto_0

    .line 757
    :cond_4
    const v0, 0x7f080173

    goto :goto_1

    .line 763
    :sswitch_f
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "MSG_MEDIARECORDER_PREPARE_FAIL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 765
    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->showAudioResourceBlockedWarningToast(I)V

    goto/16 :goto_0

    .line 768
    :sswitch_10
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "MSG_KILLED_OCCUPIED_AUDIO_PROCESS"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeUI;->showProcessKilledWarningToast()V

    goto/16 :goto_0

    .line 631
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_3
        0x2714 -> :sswitch_1
        0x2715 -> :sswitch_9
        0x2716 -> :sswitch_b
        0x2717 -> :sswitch_c
        0x2718 -> :sswitch_d
        0x2719 -> :sswitch_e
        0x271a -> :sswitch_f
        0x271b -> :sswitch_10
        0x2724 -> :sswitch_2
        0x2725 -> :sswitch_a
        0x2726 -> :sswitch_5
        0x2727 -> :sswitch_6
        0x272e -> :sswitch_7
        0x2738 -> :sswitch_8
        0x2742 -> :sswitch_4
    .end sparse-switch

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 696
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 842
    invoke-super {p0}, Lcom/htc/camera/zoe/IZoeController;->initializeOverride()V

    .line 845
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 846
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$4;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 861
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$5;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 876
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$6;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$6;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$7;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$7;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$8;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$8;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$9;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 934
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$10;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 958
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$11;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1027
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$12;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1056
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeUI$13;-><init>(Lcom/htc/camera/zoe/ZoeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1069
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$14;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$14;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 1079
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$15;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$15;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$16;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/zoe/ZoeUI$16;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/zoe/ZoeUI$17;

    const-string v3, "Settings.StorageSlot"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/zoe/ZoeUI$17;-><init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 1138
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1139
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1140
    return-void
.end method

.method protected onEnterZoeFailed()V
    .locals 2

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onEnterZoeFailed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->exitZoeMode(I)V

    .line 1649
    :cond_0
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1657
    instance-of v0, p1, Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1659
    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 1660
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;

    const-string v1, "onMonitoredComponentAdded() - Request audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 1667
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z

    .line 1669
    :cond_0
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 1678
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/zoe/IZoeController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1679
    return-void

    .line 1671
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1673
    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 1674
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_3

    .line 1675
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 1676
    :cond_3
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 1688
    invoke-super {p0, p1, p2}, Lcom/htc/camera/zoe/IZoeController;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1691
    invoke-direct {p0, p2}, Lcom/htc/camera/zoe/ZoeUI;->updateProgressIndicatorRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 1692
    return-void
.end method
