.class public Lcom/htc/camera/manualcapture/ManualCaptureUI;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ManualCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/manualcapture/IManualCaptureController;


# instance fields
.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

.field private m_CaptureBarHightlightReminder:I

.field private m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

.field private m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

.field private m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

.field private m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

.field private m_CaptureBarShutterCountDown:I

.field private m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

.field private m_CaptureButtonPressedDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field private m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

.field private m_CaptureUIBlockManager:Lcom/htc/camera/w;

.field private m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

.field private m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

.field private m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

.field private m_ExposureDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_FlashProvider:Lcom/htc/camera/FlashProvider;

.field private m_FlashProviderHandle:Lcom/htc/camera/Handle;

.field private m_FocusDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

.field private m_ISODatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

.field private m_IsButtonEnabled:Z

.field private m_IsControllerReady:Z

.field private m_IsFocusManualOnly:Z

.field private m_IsNonZSLManualMode:Z

.field private m_IsSetupUI:Z

.field private m_IsShow:Z

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_ShutterDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShutterNonZSLThreshold:D

.field private m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

.field private m_ToastHandle:Lcom/htc/camera/Handle;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_WBDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_exposure_progress"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_exposure_value"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_focus_progress"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_focus_value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_iso_progress"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_iso_value"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_shutter_progress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_shutter_value"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_wb_progress"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_wb_value"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKeys([Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 164
    const-string v0, "Manual Capture UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 121
    sget-object v0, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    .line 122
    sget-object v0, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    .line 123
    sget-object v0, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    .line 124
    sget-object v0, Lcom/htc/camera/manualcapture/MModeData;->ZERO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    .line 125
    sget-object v0, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    .line 165
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->disableAutoInflateView()V

    .line 166
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setBaseLayoutId(I)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->hideControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->showControls()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ISOToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ExposureToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/WBToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/component/Component;IZ)Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->closeProcessingDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->cancelLongExposureReminderToast()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onFinishShutterCountDown()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsControllerReady:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->enableToggleButtons()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->disableToggleButtons()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->applyLastSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/ICaptureBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onFocusProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onShutterProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onISOProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onExposureProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onWBProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ShutterToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/manualcapture/ManualCaptureUI;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateShutterValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ManualCaptureController;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/MModeData;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/FocusToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    return-object v0
.end method

.method private applyLastSettings()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsFocusManualOnly:Z

    .line 177
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarLightOnEnabled(Z)V

    .line 181
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "applyLastSettings() - Get shutter progress from settings:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setProgress(I)V

    .line 186
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateCaptureBarIndicator()V

    .line 191
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "applyLastSettings() - Get focus progress from settings:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setProgress(I)V

    .line 198
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "applyLastSettings() - Get iso progress from settings:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setProgress(I)V

    .line 205
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "applyLastSettings() - Get exposure progress from settings:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setProgress(I)V

    .line 212
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "applyLastSettings() - Get white balance progress from settings:"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->setProgress(I)V

    goto :goto_0
.end method

.method private cancelLongExposureReminderToast()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 1753
    :cond_0
    return-void
.end method

.method private closeProcessingDialog()V
    .locals 2

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 1677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1679
    :cond_0
    return-void
.end method

.method private disableToggleButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1707
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    if-eqz v0, :cond_0

    .line 1713
    const-string v0, "disableToggleButtons()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1715
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setEnabled(Z)V

    .line 1716
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setEnabled(Z)V

    .line 1717
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setEnabled(Z)V

    .line 1718
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setEnabled(Z)V

    .line 1719
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/WBToggleButton;->setEnabled(Z)V

    .line 1721
    iput-boolean v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsButtonEnabled:Z

    .line 1723
    :cond_0
    return-void
.end method

.method private enableToggleButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1686
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    if-eqz v0, :cond_0

    .line 1692
    const-string v0, "enableToggleButtons()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setEnabled(Z)V

    .line 1695
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setEnabled(Z)V

    .line 1696
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setEnabled(Z)V

    .line 1697
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setEnabled(Z)V

    .line 1698
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/WBToggleButton;->setEnabled(Z)V

    .line 1700
    iput-boolean v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsButtonEnabled:Z

    .line 1702
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonStatus()V

    .line 1704
    :cond_0
    return-void
.end method

.method private getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 326
    .line 327
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    invoke-virtual {p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_focus_progress"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->normalizeProgress(Ljava/util/List;I)I

    move-result v2

    .line 336
    if-eq v2, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_focus_value"

    invoke-virtual {v3, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    .line 342
    goto :goto_0

    .line 347
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_shutter_progress"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 348
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->normalizeProgress(Ljava/util/List;I)I

    move-result v2

    .line 352
    if-eq v2, v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_shutter_value"

    invoke-virtual {v3, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 363
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_iso_progress"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 364
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->normalizeProgress(Ljava/util/List;I)I

    move-result v2

    .line 368
    if-eq v2, v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_iso_value"

    invoke-virtual {v3, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 379
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_exposure_progress"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 380
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->normalizeProgress(Ljava/util/List;I)I

    move-result v2

    .line 384
    if-eq v2, v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_exposure_value"

    invoke-virtual {v3, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 395
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_wb_progress"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->normalizeProgress(Ljava/util/List;I)I

    move-result v2

    .line 400
    if-eq v2, v1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v3

    const-string v4, "pref_wb_value"

    invoke-virtual {v3, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getShutterSpeedIndicatorDrawable(D)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1353
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1370
    :goto_0
    return-object v0

    .line 1355
    :cond_0
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 1356
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1357
    :cond_1
    const-wide v0, 0x400999999999999aL    # 3.2

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1359
    :cond_2
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_3

    .line 1360
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1361
    :cond_3
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_4

    .line 1362
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1363
    :cond_4
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_5

    .line 1364
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_5
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_6

    .line 1366
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1367
    :cond_6
    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_7

    .line 1368
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1370
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private hideControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsShow:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->showUI(Landroid/view/View;ZZ)V

    .line 570
    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsShow:Z

    .line 572
    :cond_0
    return-void
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 780
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-eqz v0, :cond_0

    move v3, v6

    .line 789
    :goto_0
    return v3

    .line 782
    :cond_0
    const-class v0, Lcom/htc/camera/manualcapture/ManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ManualCaptureController;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    .line 783
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-eqz v0, :cond_1

    .line 785
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3e8

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 786
    goto :goto_0

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToController() - Cannot find manual capture controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private normalizeProgress(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 414
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_2

    .line 418
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    :cond_1
    :goto_1
    move v0, p2

    .line 422
    goto :goto_0

    .line 419
    :cond_2
    if-ge p2, v0, :cond_1

    move p2, v0

    .line 420
    goto :goto_1
.end method

.method private onCaptureStarted()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 795
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 798
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->showLongExposureReminderToast()V

    .line 801
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    invoke-direct {v0}, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    .line 804
    iget v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHightlightReminder:I

    .line 805
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    .line 806
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureButtonPressedDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    invoke-virtual {v2}, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->invalidateSelf()V

    .line 810
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 812
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v3, Lcom/htc/camera/ICaptureBar$CaptureButton;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButton;

    iget-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconDrawable:Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    .line 815
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    if-eqz v2, :cond_2

    .line 816
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/ICaptureBar;->hideRecordingTimer(Lcom/htc/camera/Handle;)V

    .line 817
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    const-string v3, ""

    invoke-virtual {v2, v3, v6}, Lcom/htc/camera/ICaptureBar;->showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    .line 818
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3, v6}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 819
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/ICaptureBar;->invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V

    .line 821
    const/16 v2, 0x406

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 823
    :cond_3
    return-void
.end method

.method private onExposureProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onExposureProgressChanged() - Controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureValue(I)V

    .line 998
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V

    .line 1001
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f6

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private onFinishShutterCountDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    const/16 v0, 0x406

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 849
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    .line 851
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 854
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideRecordingTimer(Lcom/htc/camera/Handle;)V

    .line 860
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureBarVisibility(Lcom/htc/camera/Handle;)V

    .line 866
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    .line 868
    :cond_2
    return-void
.end method

.method private onFocusProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 914
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onFocusProgressChanged() - Controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsFocusManualOnly:Z

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarLightOnEnabled(Z)V

    .line 929
    :goto_1
    invoke-direct {p0, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateFocusValue(I)V

    .line 934
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f3

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v6}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarLightOnEnabled(Z)V

    goto :goto_1
.end method

.method private onISOProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 963
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onISOProgressChanged() - Controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateISOValue(I)V

    .line 977
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f5

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private onShutterProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 941
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-nez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onShutterProgressChanged() - Controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateShutterValue(I)V

    .line 955
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f4

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private onUpdateShutterCountDown()V
    .locals 3

    .prologue
    .line 827
    iget v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    .line 829
    iget v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    if-ltz v0, :cond_1

    .line 831
    iget v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarShutterCountDown:I

    rem-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHightlightReminder:I

    if-ne v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V

    .line 838
    const/16 v0, 0x406

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 844
    :goto_1
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    goto :goto_0

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onFinishShutterCountDown()V

    goto :goto_1
.end method

.method private onWBProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1005
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onWBProgressChanged() - Controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateWBValue(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f7

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private prepareExposureMarkerValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    .line 1064
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1068
    :cond_1
    return-object v1
.end method

.method private prepareFocusMarkerDrawables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    return-object v1
.end method

.method private prepareISOMarkerValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    .line 1053
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1057
    :cond_1
    return-object v1
.end method

.method private prepareShutterMarkerValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    .line 1042
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1043
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1046
    :cond_1
    return-object v1
.end method

.method private prepareWBMarkerValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    .line 1075
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1079
    :cond_1
    return-object v1
.end method

.method private setExposureSeekBarMax(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1174
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setExposureSeekBarMax() - Seek bar is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setExposureSeekBarMax() - Seek bar max: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setMax(I)V

    .line 1186
    iput-object p2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->prepareExposureMarkerValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setSeekBarMarker(Ljava/util/List;)V

    .line 1190
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 1193
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setProgress(I)V

    .line 1196
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureValue(I)V

    .line 1199
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f6

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private setFocusSeekBarMax(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setFocusSeekBarMax() - Seek bar is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setFocusSeekBarMax() - Seek bar max: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1096
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setMax(I)V

    .line 1099
    iput-object p2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    .line 1100
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->prepareFocusMarkerDrawables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarMarkerDrawable(Ljava/util/List;)V

    .line 1103
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 1106
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setProgress(I)V

    .line 1109
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateFocusValue(I)V

    .line 1112
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f3

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private setISOSeekBarMax(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1145
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setISOSeekBarMax() - Seek bar is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setISOSeekBarMax() - Seek bar max: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1154
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setMax(I)V

    .line 1157
    iput-object p2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    .line 1158
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->prepareISOMarkerValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setSeekBarMarker(Ljava/util/List;)V

    .line 1161
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 1164
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setProgress(I)V

    .line 1167
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateISOValue(I)V

    .line 1170
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f5

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private setProgressToSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 430
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    invoke-virtual {p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 433
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_focus_progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_focus_value"

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_shutter_progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_shutter_value"

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_iso_progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_iso_value"

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_exposure_progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_exposure_value"

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_wb_progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_wb_value"

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setShutterSeekBarMax(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1116
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setShutterSeekBarMax() - Seek bar is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setShutterSeekBarMax() - Seek bar max: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1125
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setMax(I)V

    .line 1128
    iput-object p2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    .line 1129
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->prepareShutterMarkerValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setSeekBarMarker(Ljava/util/List;)V

    .line 1132
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 1135
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setProgress(I)V

    .line 1138
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateShutterValue(I)V

    .line 1141
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f4

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private setWBSeekBarMax(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1203
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setWBSeekBarMax() - Seek bar is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "setWBSeekBarMax() - Seek bar max: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/WBToggleButton;->setMax(I)V

    .line 1215
    iput-object p2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    .line 1216
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->prepareWBMarkerValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/WBToggleButton;->setSeekBarMarker(Ljava/util/List;)V

    .line 1219
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 1222
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->setProgress(I)V

    .line 1225
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateWBValue(I)V

    .line 1228
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v2, 0x3f7

    iget-object v5, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method

.method private setupUI()V
    .locals 4

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    .line 1244
    const v0, 0x7f0e01b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ExposureToggleButton;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    .line 1245
    const v0, 0x7f0e01bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/FocusToggleButton;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    .line 1246
    const v0, 0x7f0e01ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ISOToggleButton;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    .line 1247
    const v0, 0x7f0e01bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ShutterToggleButton;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    .line 1248
    const v0, 0x7f0e01b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/WBToggleButton;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    .line 1251
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1252
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0468

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1253
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0469

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1254
    new-instance v3, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    .line 1255
    new-instance v0, Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureButtonPressedDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    .line 1258
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$9;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 1271
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$10;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 1284
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$11;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 1297
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$12;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 1310
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$13;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/WBToggleButton;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsSetupUI:Z

    goto/16 :goto_0
.end method

.method private showControls()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1378
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsShow:Z

    if-nez v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "showControls() - Show seek bars"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1385
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    :cond_2
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    .line 1395
    sget-object v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1414
    :goto_1
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v2, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int v0, v2, v0

    .line 1416
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->rotate(I)V

    .line 1417
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->rotate(I)V

    .line 1418
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->rotate(I)V

    .line 1419
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->rotate(I)V

    .line 1420
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->rotate(I)V

    .line 1423
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->showUI(Landroid/view/View;ZZ)V

    .line 1425
    iput-boolean v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsShow:Z

    goto :goto_0

    .line 1398
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setVisibility(I)V

    .line 1399
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setVisibility(I)V

    .line 1400
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setVisibility(I)V

    .line 1401
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/WBToggleButton;->setVisibility(I)V

    goto :goto_1

    .line 1405
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setVisibility(I)V

    .line 1407
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/WBToggleButton;->setVisibility(I)V

    .line 1408
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v0, v5}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setVisibility(I)V

    .line 1409
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v0, v5}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setVisibility(I)V

    goto :goto_1

    .line 1395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showLongExposureReminderToast()V
    .locals 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_0

    .line 1737
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_1

    .line 1741
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->cancelLongExposureReminderToast()V

    .line 1742
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 1744
    :cond_1
    return-void
.end method

.method private updateCaptureBarIndicator()V
    .locals 4

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1331
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getShutterSpeedIndicatorDrawable(D)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1332
    if-nez v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->setShutter(Ljava/lang/String;)V

    .line 1336
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->invalidateSelf()V

    .line 1338
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->showIndicator(Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    .line 1349
    :cond_0
    :goto_1
    return-void

    .line 1335
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorDrawable:Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->setShutterDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    goto :goto_1
.end method

.method private updateExposureButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1623
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setProgress(I)V

    .line 1628
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setEnabled(Z)V

    .line 1629
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->collapse()V

    .line 1631
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_EXPOSURE:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->a(Ljava/lang/String;)V

    .line 1639
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsButtonEnabled:Z

    if-eqz v0, :cond_3

    .line 1640
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setEnabled(Z)V

    .line 1642
    :cond_3
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_EXPOSURE:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateExposureButtonValue()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1650
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsNonZSLManualMode:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isAuto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1652
    const-string v0, "+"

    .line 1653
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 1655
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    .line 1656
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1664
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->a(Ljava/lang/String;)V

    .line 1665
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "updateExposureButtonValue() - Update EV value on button: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1667
    :cond_0
    return-void

    .line 1659
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1662
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateExposureValue(I)V
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateExposureValue() - No exposure data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :goto_0
    return-void

    .line 1541
    :cond_0
    const-string v0, "0"

    .line 1542
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1545
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1549
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->a(Ljava/lang/String;)V

    .line 1553
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonValue()V

    goto :goto_0

    .line 1548
    :cond_1
    sget-object v1, Lcom/htc/camera/manualcapture/MModeData;->ZERO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentExposureData:Lcom/htc/camera/manualcapture/MModeData;

    goto :goto_1
.end method

.method private updateFocusValue(I)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1434
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateFocusValue() - No focus data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void

    .line 1445
    :cond_0
    if-eq p1, v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1448
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v0

    .line 1450
    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1458
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->a(I)V

    goto :goto_0

    .line 1454
    :cond_1
    sget-object v1, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentFocusData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1456
    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateISOValue(I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1505
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateISOValue() - No iso data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :goto_0
    return-void

    .line 1516
    :cond_0
    if-eq p1, v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISODatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1519
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toInteger()I

    move-result v0

    .line 1523
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->a(I)V

    .line 1526
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonStatus()V

    .line 1527
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonValue()V

    goto :goto_0

    .line 1522
    :cond_1
    sget-object v1, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentISOData:Lcom/htc/camera/manualcapture/MModeData;

    goto :goto_1
.end method

.method private updateShutterValue(I)V
    .locals 5

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateShutterValue() - No shutter data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :goto_0
    return-void

    .line 1472
    :cond_0
    const-string v0, "-1"

    .line 1473
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 1475
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1476
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v1, :cond_2

    .line 1482
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v1}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 1494
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateCaptureBarIndicator()V

    .line 1497
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->a(Ljava/lang/String;)V

    .line 1500
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonStatus()V

    .line 1501
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonValue()V

    goto :goto_0

    .line 1483
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 1486
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 1491
    :cond_3
    sget-object v1, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;

    goto :goto_1
.end method

.method private updateWBValue(I)V
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateWBValue() - No white balance data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :goto_0
    return-void

    .line 1567
    :cond_0
    const-string v0, "-1"

    .line 1568
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    .line 1571
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1575
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1574
    :cond_1
    sget-object v1, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    iput-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentWBData:Lcom/htc/camera/manualcapture/MModeData;

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    invoke-virtual {v0}, Lcom/htc/camera/FlashProvider;->release()V

    .line 772
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 773
    return-void
.end method

.method public enter(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "enter()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setupUI()V

    .line 225
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->disableToggleButtons()V

    .line 228
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 237
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {v0, v3}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->closeExpandableMenu(Z)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->showControls()V

    .line 244
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->applyLastSettings()V

    .line 247
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/IFlashController;->setFlashProvider(Lcom/htc/camera/FlashProvider;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v1, "Manual Capture UI"

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 254
    :cond_2
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 255
    :goto_0
    return-void

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 267
    :goto_0
    iput-boolean v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsControllerReady:Z

    .line 269
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->hideControls()V

    .line 272
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->enableTouchFocus(Z)V

    .line 275
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 278
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/IFlashController;->restoreFlashProvider(Lcom/htc/camera/Handle;I)V

    .line 285
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 292
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideRecordingTimer(Lcom/htc/camera/Handle;)V

    .line 299
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarHighlightHandle:Lcom/htc/camera/Handle;

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 304
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideIndicator(Lcom/htc/camera/Handle;)V

    .line 309
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarIndicatorHandle:Lcom/htc/camera/Handle;

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_6

    .line 314
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureBarVisibility(Lcom/htc/camera/Handle;)V

    .line 315
    iput-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;

    .line 318
    :cond_6
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 319
    return-void

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 473
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setFocusSeekBarMax(ILjava/util/List;)V

    goto :goto_0

    .line 476
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setShutterSeekBarMax(ILjava/util/List;)V

    goto :goto_0

    .line 479
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setISOSeekBarMax(ILjava/util/List;)V

    goto :goto_0

    .line 482
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setExposureSeekBarMax(ILjava/util/List;)V

    goto :goto_0

    .line 485
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->setWBSeekBarMax(ILjava/util/List;)V

    goto :goto_0

    .line 488
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 495
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsFocusManualOnly:Z

    .line 496
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->getProgress()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarLightOnEnabled(Z)V

    goto :goto_0

    .line 491
    :pswitch_1
    iput-boolean v3, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsFocusManualOnly:Z

    .line 492
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setSeekBarLightOnEnabled(Z)V

    goto :goto_0

    .line 503
    :sswitch_6
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->getProgress()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 505
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 506
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->expand()V

    .line 507
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setProgress(I)V

    .line 508
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateFocusValue(I)V

    goto :goto_0

    .line 512
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterNonZSLThreshold:D

    goto :goto_0

    .line 515
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onCaptureStarted()V

    goto :goto_0

    .line 518
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsNonZSLManualMode:Z

    .line 519
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsNonZSLManualMode:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateExposureButtonValue()V

    goto/16 :goto_0

    .line 524
    :sswitch_a
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_0

    .line 526
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Enable flashlight"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 530
    iput-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 532
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Disable flashlight"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 542
    :sswitch_b
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onUpdateShutterCountDown()V

    goto/16 :goto_0

    .line 546
    :sswitch_c
    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsControllerReady:Z

    .line 547
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->enableToggleButtons()V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 554
    iput-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3f3 -> :sswitch_6
        0x3f7 -> :sswitch_7
        0x3fc -> :sswitch_8
        0x3fd -> :sswitch_9
        0x401 -> :sswitch_a
        0x406 -> :sswitch_b
        0x40b -> :sswitch_c
    .end sparse-switch

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 581
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->initializeOverride()V

    .line 583
    const-class v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 584
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No expandable menu UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 588
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot get IProcessingDialogManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_1
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualFlashProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    .line 592
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 593
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot get IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 597
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot get ICaptureBar"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    .line 601
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_4

    .line 602
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot get ICaptureUIBlockManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v1, v1, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$1;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 621
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$2;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 637
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$3;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 649
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$4;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 664
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$5;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 674
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 696
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 722
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;-><init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 761
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 876
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 877
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 886
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 894
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onUIRotationChanged() - set rotation:"

    iget v2, p2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 899
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget v1, p2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    .line 901
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->rotate(I)V

    .line 902
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->rotate(I)V

    .line 903
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->rotate(I)V

    .line 904
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->rotate(I)V

    .line 905
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->rotate(I)V

    .line 907
    :cond_0
    return-void
.end method
