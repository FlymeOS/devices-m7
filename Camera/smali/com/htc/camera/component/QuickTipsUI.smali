.class public Lcom/htc/camera/component/QuickTipsUI;
.super Lcom/htc/camera/component/cm;
.source "QuickTipsUI.java"


# instance fields
.field private m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

.field private m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

.field private m_GridMenuAnchor:Landroid/view/View;

.field private m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_IsGridMenuTipsEverShown:Z

.field private m_IsOneCamStep1EvenShown:Z

.field private m_IsOneCamStep2EvenShown:Z

.field private m_IsOneCamStep3EvenShown:Z

.field private m_IsOneCamStep5EvenShown:Z

.field private m_IsOneCamStopRecordingEvenShown:Z

.field private m_IsOneCamStopRecordingShowing:Z

.field private m_IsSettingsAutoSelfieTipsEverShown:Z

.field private m_IsSettingsTipsEverShown:Z

.field private m_IsSwipeCameraTipsEverShown:Z

.field private m_LaunchCount:I

.field private m_ModeChangeCount:I

.field private m_OneCamAnchor:Landroid/view/View;

.field private m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

.field private m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_QuickTipsDisabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsAnchor:Landroid/view/View;

.field private m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

.field private m_ShowGridMenuSmartTips:Z

.field private m_ShowSwipeCameraSmartTips:Z

.field private m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 127
    const-string v0, "QuickTipsUI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 106
    iput v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    .line 107
    iput v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsAutoSelfieQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showGridMenuQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/QuickTipsUI;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->disableAllQuickTips()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/QuickTipsUI;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/zoe/IZoeController;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep2EvenShown:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep5EvenShown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/QuickTipsUI;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsTipsEverShown:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/camera/component/QuickTipsUI;->setOneCamState(Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/component/QuickTipsUI;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/QuickTipsUI;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/QuickTipsUI;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/QuickTipsUI;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/QuickTipsUI;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/QuickTipsUI;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/component/QuickTipsUI;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    return p1
.end method

.method static synthetic access$704(Lcom/htc/camera/component/QuickTipsUI;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/QuickTipsUI;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/camera/component/QuickTipsUI;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V

    return-void
.end method

.method private disableAllQuickTips()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V

    .line 546
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V

    .line 547
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showGridMenuQuickTips(ZZ)V

    .line 548
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V

    .line 550
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsQuickTips(ZZ)V

    .line 551
    invoke-direct {p0, v0, v0}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsAutoSelfieQuickTips(ZZ)V

    .line 552
    return-void
.end method

.method private disableQuickTips(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableQuickTips for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1113
    invoke-static {v0, p1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOneCamState()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    .locals 3

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_one_cam_quicktips_state"

    sget-object v2, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP1:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    invoke-virtual {v2}, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1131
    invoke-static {}, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->values()[Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method private nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 701
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    if-eq v0, v1, :cond_0

    .line 702
    sget-object v0, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP1:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 708
    :goto_0
    return-object v0

    .line 703
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep2EvenShown:Z

    if-eq v0, v1, :cond_1

    .line 704
    sget-object v0, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_0

    .line 705
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    if-eq v0, v1, :cond_2

    .line 706
    sget-object v0, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP3:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v0, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->END:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_0
.end method

.method private queryTipsNeverShown(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1119
    invoke-static {v0, p1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings$System;->getQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1121
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_QuickTipsDisabledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryTipsNeverShown() - result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    return v0
.end method

.method private rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 512
    return-void
.end method

.method private rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 516
    .line 517
    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 533
    :cond_0
    if-eqz p2, :cond_1

    .line 535
    if-nez p3, :cond_2

    .line 536
    invoke-virtual {p2, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOrientation(B)V

    .line 541
    :cond_1
    :goto_1
    return-void

    .line 520
    :pswitch_1
    const/4 v0, 0x1

    .line 521
    goto :goto_0

    .line 526
    :pswitch_2
    const/4 v0, 0x3

    .line 527
    goto :goto_0

    .line 529
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p2, v0, p3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOrientation(BLandroid/view/View;)V

    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setOneCamState(Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V
    .locals 3

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_one_cam_quicktips_state"

    invoke-virtual {p1}, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1137
    return-void
.end method

.method private showCameraQuickTips(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 567
    :cond_3
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 569
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v1, v1, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 572
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showStopRecordingQuickTips(ZZ)V

    goto :goto_0

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->END:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-eq v0, v1, :cond_6

    .line 579
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 581
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V

    .line 582
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto :goto_0

    .line 585
    :cond_5
    invoke-direct {p0, v2, v2}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V

    goto :goto_0

    .line 587
    :cond_6
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_8

    .line 589
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showGridMenuQuickTips(ZZ)V

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 592
    :cond_8
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_0

    .line 594
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V

    .line 595
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 598
    :cond_a
    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 602
    :cond_d
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_f

    .line 604
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showGridMenuQuickTips(ZZ)V

    .line 605
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 607
    :cond_f
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_0

    .line 609
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V

    .line 610
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 615
    :cond_11
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_13

    .line 617
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showGridMenuQuickTips(ZZ)V

    .line 618
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 620
    :cond_13
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_15

    .line 622
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V

    .line 623
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 630
    :cond_15
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsTipsEverShown:Z

    if-nez v0, :cond_16

    .line 633
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsQuickTips(ZZ)V

    .line 634
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0

    .line 636
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z

    if-nez v0, :cond_0

    .line 637
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/QuickTipsUI;->showSettingsAutoSelfieQuickTips(ZZ)V

    .line 638
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    goto/16 :goto_0
.end method

.method private showGridMenuQuickTips(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 832
    if-eqz p1, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v1, :cond_0

    .line 837
    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v1, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 838
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const v2, 0x7f0803fa

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$19;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 850
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e00f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuAnchor:Landroid/view/View;

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showGridMenuQuickTips: show quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuAnchor:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 857
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;)V

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "m_GridMenuTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 867
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 868
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_GridMenuAnchor:Landroid/view/View;

    .line 869
    if-eqz p2, :cond_4

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    .line 872
    const-string v0, "com.htc.camera.gridmenu"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 875
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    if-eqz v0, :cond_5

    .line 877
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_launch_count"

    const/16 v2, 0x63

    iput v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 878
    iput-boolean v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    goto :goto_0

    .line 882
    :cond_5
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 883
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_launch_count"

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    goto :goto_0
.end method

.method private showOneCamInfoQuickTips(ZZLcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 714
    if-eqz p1, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 717
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v0, :cond_0

    .line 719
    const-string v0, ""

    .line 720
    sget-object v2, Lcom/htc/camera/component/QuickTipsUI$23;->$SwitchMap$com$htc$camera$component$QuickTipsUI$OneCamQuickTipsState:[I

    invoke-virtual {p3}, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 739
    :goto_0
    new-instance v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v2, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 740
    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setExpandDirection(I)V

    .line 742
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$17;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$17;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 753
    const v0, 0x7f0e0160

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showOneCamInfoQuickTips: show quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 773
    :cond_1
    :goto_1
    return-void

    .line 723
    :pswitch_0
    const v0, 0x7f0803f5

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 726
    :pswitch_1
    const v0, 0x7f0803f6

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    :pswitch_2
    const v0, 0x7f0803f7

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 732
    :pswitch_3
    const v0, 0x7f0803f8

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :pswitch_4
    const v0, 0x7f0803f9

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showOneCamInfoQuickTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 770
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 771
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    goto :goto_1

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showOneCamQuickTips(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 649
    if-eqz p1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamInfoQuickTips(ZZLcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    .line 697
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/QuickTipsUI;->showOneCamInfoQuickTips(ZZLcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    .line 656
    if-eqz p2, :cond_6

    .line 658
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP1:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_3

    .line 660
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    .line 661
    const-string v0, "com.htc.camera.onecamera.step1"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 680
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    if-ne v0, v2, :cond_2

    .line 682
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    .line 683
    const-string v0, "com.htc.camera.onecamera.stoprecording"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    .line 686
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    .line 687
    const-string v0, "com.htc.camera.onecamera.step3"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 695
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->setOneCamState(Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP2:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_4

    .line 666
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep2EvenShown:Z

    .line 667
    const-string v0, "com.htc.camera.onecamera.step2"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_1

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP3:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_5

    .line 672
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    .line 673
    const-string v0, "com.htc.camera.onecamera.step3"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_1

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    sget-object v1, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->END:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 692
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->nextOneCameraQuickTips()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    goto :goto_2
.end method

.method private showSettingsAutoSelfieQuickTips(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1046
    if-eqz p1, :cond_4

    .line 1048
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1051
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IVoiceHfmClient;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient;

    .line 1052
    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/IVoiceHfmClient;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1055
    :cond_0
    const-string v0, "com.htc.camera.settings.autoselfie"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 1056
    iput-boolean v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z

    .line 1057
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v0, :cond_3

    .line 1063
    new-instance v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 1064
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const v2, 0x7f080401

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setExpandDirection(I)V

    .line 1066
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v1, Lcom/htc/camera/component/QuickTipsUI$22;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/QuickTipsUI$22;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 1077
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->getIconViewContainer(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    .line 1080
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showSettingsAutoSelfieQuickTips: show quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 1084
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 1089
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1091
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showSettingsAutoSelfieQuickTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 1094
    :cond_5
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAutoSelfieTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 1095
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    .line 1096
    if-eqz p2, :cond_1

    .line 1098
    iput-boolean v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z

    .line 1099
    const-string v0, "com.htc.camera.settings.autoselfie"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSettingsQuickTips(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 998
    if-eqz p1, :cond_2

    .line 1000
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v1, :cond_0

    .line 1003
    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v1, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 1004
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const v2, 0x7f080400

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setExpandDirection(I)V

    .line 1006
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v1, Lcom/htc/camera/component/QuickTipsUI$21;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/QuickTipsUI$21;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->getIconViewContainer(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showSettingsQuickTips: show quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 1024
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;)V

    .line 1042
    :cond_1
    :goto_0
    return-void

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1031
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showSettingsQuickTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 1034
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 1035
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SettingsAnchor:Landroid/view/View;

    .line 1036
    if-eqz p2, :cond_1

    .line 1038
    iput-boolean v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsTipsEverShown:Z

    .line 1039
    const-string v0, "com.htc.camera.settings"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showStopRecordingQuickTips(ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 777
    if-eqz p1, :cond_2

    .line 779
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v1, :cond_0

    .line 783
    const v1, 0x7f0803f8

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    new-instance v2, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v2, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 786
    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setExpandDirection(I)V

    .line 788
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$18;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$18;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 800
    const v1, 0x7f0e0160

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showStopRecordingQuickTips: show quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;Landroid/view/View;)V

    .line 807
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 808
    iput-boolean v4, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    .line 828
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showStopRecordingQuickTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 818
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 819
    iput-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamAnchor:Landroid/view/View;

    .line 820
    iput-boolean v3, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    .line 821
    if-eqz p2, :cond_1

    .line 822
    iput-boolean v4, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    .line 823
    iput-boolean v4, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    .line 824
    const-string v0, "com.htc.camera.onecamera.step3"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 825
    const-string v0, "com.htc.camera.onecamera.stoprecording"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSwipeCameraQuickTips(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 890
    if-eqz p1, :cond_3

    .line 892
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-nez v1, :cond_0

    .line 895
    new-instance v1, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {v1, v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 896
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    const v2, 0x7f0803fe

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$20;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$20;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v2, "showSwipeCameraQuickTips: show quicktips"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    .line 913
    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 917
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {p0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    .line 918
    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2, v5, v5}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->showAtLocation(Landroid/view/View;III)V

    .line 946
    :cond_1
    :goto_1
    return-void

    .line 916
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 923
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v1, "showSwipeCameraQuickTips: dismiss quicktips"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 928
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    .line 929
    if-eqz p2, :cond_5

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    .line 932
    const-string v0, "com.htc.camera.swipecamera"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->disableQuickTips(Ljava/lang/String;)V

    .line 935
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    if-eqz v0, :cond_6

    .line 937
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_mode_change_count"

    const/16 v2, 0x63

    iput v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 938
    iput-boolean v5, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    goto :goto_1

    .line 942
    :cond_6
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 943
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_mode_change_count"

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 506
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 507
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CurrentQuickTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/QuickTipsUI;->rotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraSwipeTips:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/16 v6, 0x63

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 163
    invoke-virtual {p0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v4

    .line 164
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICameraMenuUI;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    .line 165
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 166
    const-class v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 167
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 168
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 169
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

    .line 170
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 172
    const-string v0, "com.htc.camera.onecamera.step1"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    .line 173
    const-string v0, "com.htc.camera.onecamera.step2"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep2EvenShown:Z

    .line 174
    const-string v0, "com.htc.camera.onecamera.step3"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep3EvenShown:Z

    .line 176
    const-string v0, "com.htc.camera.onecamera.step5"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep5EvenShown:Z

    .line 177
    const-string v0, "com.htc.camera.onecamera.stoprecording"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingEvenShown:Z

    .line 178
    const-string v0, "com.htc.camera.gridmenu"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    .line 179
    const-string v0, "com.htc.camera.swipecamera"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    .line 183
    const-string v0, "com.htc.camera.settings"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsTipsEverShown:Z

    .line 184
    const-string v0, "com.htc.camera.settings.autoselfie"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->queryTipsNeverShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSettingsAutoSelfieTipsEverShown:Z

    .line 185
    iput-boolean v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStopRecordingShowing:Z

    .line 187
    invoke-direct {p0}, Lcom/htc/camera/component/QuickTipsUI;->getOneCamState()Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 188
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsOneCamStep1EvenShown:Z

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;->STEP1:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    iput-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_OneCamState:Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/QuickTipsUI;->setOneCamState(Lcom/htc/camera/component/QuickTipsUI$OneCamQuickTipsState;)V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsSwipeCameraTipsEverShown:Z

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "pref_camera_mode_change_count"

    invoke-virtual {v4, v0, v2}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    .line 197
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I

    const/4 v5, 0x5

    if-le v0, v5, :cond_1

    .line 198
    iput-boolean v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowSwipeCameraSmartTips:Z

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_IsGridMenuTipsEverShown:Z

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "pref_camera_launch_count"

    invoke-virtual {v4, v0, v2}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    .line 204
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    if-eq v0, v6, :cond_2

    .line 206
    const-string v0, "pref_camera_launch_count"

    iget v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 207
    iget v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_LaunchCount:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 208
    iput-boolean v1, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ShowGridMenuSmartTips:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$1;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$2;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$3;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$4;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$5;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 314
    :cond_6
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$6;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 330
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$7;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 347
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$8;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 358
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$9;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 375
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_10

    .line 377
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$10;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 399
    :goto_9
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$11;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 419
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$12;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 436
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$13;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 448
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$14;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v3, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 457
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/QuickTipsUI$15;-><init>(Lcom/htc/camera/component/QuickTipsUI;)V

    invoke-virtual {v3, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 486
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/QuickTipsUI$16;

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/camera/component/QuickTipsUI$16;-><init>(Lcom/htc/camera/component/QuickTipsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-void

    :cond_7
    move v0, v2

    .line 172
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 173
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 174
    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 176
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 177
    goto/16 :goto_4

    :cond_c
    move v0, v2

    .line 178
    goto/16 :goto_5

    :cond_d
    move v0, v2

    .line 179
    goto/16 :goto_6

    :cond_e
    move v0, v2

    .line 183
    goto/16 :goto_7

    :cond_f
    move v0, v2

    .line 184
    goto/16 :goto_8

    .line 397
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - Cannot find ICameraMenuUI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
