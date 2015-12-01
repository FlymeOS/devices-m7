.class public Lcom/htc/camera/component/IndicatorsUI;
.super Lcom/htc/camera/component/cm;
.source "IndicatorsUI.java"


# instance fields
.field private final isRemainingCounterVisible:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneIndicator:Landroid/widget/TextView;

.field private m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

.field private m_Is1stTapCaptureToastShown:Z

.field private m_MuteIndicator:Landroid/widget/ImageView;

.field private m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field private m_PhotoRemainingCounter:Landroid/widget/TextView;

.field private m_PhotoRemainingCounterContainer:Landroid/view/View;

.field private m_PhotoRemainingCounterImageView:Landroid/widget/ImageView;

.field private m_RemainingCounterContainer:Landroid/view/View;

.field private m_RemainingCounterPaddingView:Landroid/view/View;

.field private m_RemainingCounterRotateContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_TapCaptureToastHandle:Lcom/htc/camera/Handle;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_VideoRemainingCounter:Landroid/widget/TextView;

.field private m_VideoRemainingCounterContainer:Landroid/view/View;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v0, "Indicators"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 89
    sget-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Initial:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 115
    const-string v0, "IndicatorsUI.IsRemainingCounterVisible"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/camera/component/IndicatorsUI;->showIndicators()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/IndicatorsUI;ZZ)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/zoe/IZoeController;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/IndicatorsUI;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/component/IndicatorsUI;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/component/IndicatorsUI;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V

    return-void
.end method

.method private convertToRemainingTimeString(J)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0x3c

    .line 123
    rem-long v0, p1, v4

    .line 124
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    .line 125
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    .line 126
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 127
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%02d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideRemainingCounter(Z)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/IndicatorsUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/IndicatorsUI$1;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rotateIndicator(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/IndicatorsUI$30;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/htc/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/component/n;)V

    goto :goto_0
.end method

.method private setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 774
    if-eqz p1, :cond_1

    .line 777
    if-eqz p3, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 781
    :cond_0
    invoke-virtual {p0, p1, p3, p3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 783
    :cond_1
    return-void
.end method

.method private showIndicators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 791
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 792
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 797
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method private showRemainingCounter(Ljava/util/Hashtable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraMode;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 881
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 888
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 889
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 893
    sget-object v4, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 902
    :cond_2
    :pswitch_0
    sget-object v4, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_1

    .line 914
    :cond_3
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 916
    :cond_4
    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/IndicatorsUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 906
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 923
    :cond_5
    if-eqz p1, :cond_13

    .line 927
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 928
    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 929
    iget-object v4, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    if-eqz v0, :cond_f

    .line 931
    iget-object v4, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v4, v4, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d

    .line 932
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    move v4, v2

    .line 936
    :goto_1
    iget-object v5, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v0, 0xa

    invoke-static {v6, v7, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    move v0, v2

    .line 941
    :goto_2
    iget-object v5, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    .line 943
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xb4

    cmp-long v0, v5, v7

    if-lez v0, :cond_11

    move v0, v2

    :goto_3
    and-int/2addr v4, v0

    .line 945
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/htc/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    move v0, v2

    .line 957
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterPaddingView:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 959
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 960
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterPaddingView:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 966
    :cond_8
    :goto_5
    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$component$IndicatorsUI$RemainingCounterState:[I

    iget-object v5, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    invoke-virtual {v5}, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_2

    .line 972
    :cond_9
    if-eqz v0, :cond_1b

    .line 975
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 977
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    .line 978
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterImageView:Landroid/widget/ImageView;

    const v1, 0x7f020222

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 984
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V

    .line 985
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 988
    if-eqz v4, :cond_1a

    .line 990
    sget-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Ignorable:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 991
    const/4 v5, 0x2

    const-wide/16 v6, 0x1388

    move-object v3, p0

    move-object v4, p0

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/camera/component/IndicatorsUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1002
    :goto_7
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    move v4, v3

    .line 932
    goto/16 :goto_1

    .line 934
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    move v4, v2

    goto/16 :goto_1

    :cond_e
    move v4, v3

    goto/16 :goto_1

    .line 939
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 940
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    move v4, v2

    move v0, v3

    goto/16 :goto_2

    :cond_11
    move v0, v3

    .line 943
    goto/16 :goto_3

    .line 948
    :cond_12
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 949
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 953
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_16

    :cond_15
    move v0, v2

    .line 955
    :goto_8
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    sget-object v4, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Ignorable:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    if-ne v1, v4, :cond_17

    move v1, v2

    :goto_9
    move v4, v1

    goto/16 :goto_4

    :cond_16
    move v0, v3

    .line 953
    goto :goto_8

    :cond_17
    move v1, v3

    .line 955
    goto :goto_9

    .line 962
    :cond_18
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterPaddingView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 969
    :pswitch_2
    if-eqz v4, :cond_9

    goto/16 :goto_0

    .line 980
    :cond_19
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterImageView:Landroid/widget/ImageView;

    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 994
    :cond_1a
    sget-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    goto :goto_7

    .line 997
    :cond_1b
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_7

    .line 893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 902
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 966
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private showRemainingCounter(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 805
    if-eqz p1, :cond_6

    .line 807
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v5

    .line 808
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v1, v0

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 821
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$31;

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI$31;-><init>(Lcom/htc/camera/component/IndicatorsUI;ZZ)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 877
    :goto_2
    return-void

    :cond_1
    move-object v1, v0

    .line 808
    goto :goto_0

    .line 818
    :cond_2
    iget-boolean v0, v5, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v2, v3

    .line 819
    :goto_3
    iget-boolean v0, v5, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v2, v4

    .line 818
    goto :goto_3

    .line 876
    :cond_6
    invoke-direct {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Ljava/util/Hashtable;)V

    goto :goto_2
.end method

.method private updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1011
    return-void
.end method

.method private updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1015
    if-nez p1, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1021
    if-eqz v2, :cond_1

    .line 1023
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1024
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1033
    :goto_1
    invoke-virtual {p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1034
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1037
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1044
    :goto_2
    invoke-virtual {p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 1047
    invoke-virtual {p1, p3}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1029
    goto :goto_1

    .line 1041
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1042
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private updateMuteIndicator()V
    .locals 3

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 1056
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 1058
    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    const-string v1, "effectManager is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_RECORD_WITH_AUDIO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SlowMotionScene;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator(ZZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMuteIndicator(ZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1073
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 1079
    if-eqz p1, :cond_2

    .line 1084
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    .line 1091
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1092
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1093
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-eq v2, v3, :cond_4

    .line 1095
    const v2, 0x7f0a033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1096
    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1103
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    .line 1079
    :cond_2
    const v0, 0x7f020078

    goto :goto_1

    .line 1087
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1100
    :cond_4
    const v2, 0x7f0a0341

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1101
    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 7

    .prologue
    const v6, 0x7f0a02d1

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v1, -0x2

    const/16 v3, 0xe

    .line 1112
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1116
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1117
    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1138
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1139
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1140
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1141
    :cond_1
    invoke-virtual {p0, v6}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1146
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1120
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1121
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1122
    const v1, 0x7f0a02d3

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1125
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1126
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1127
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1128
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1130
    :cond_3
    const v1, 0x7f0a02d2

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1133
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1134
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1135
    const v1, 0x7f0a02d3

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1143
    :cond_4
    const v1, 0x7f0a02d2

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSelfTimerIndicator()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 1226
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1223
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_1
.end method

.method private updateTapCaptureBubbleToast(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1159
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTapCaptureBubbleToast() - showToast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    if-eqz p1, :cond_6

    .line 1163
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    const-string v1, "updateTapCaptureBubbleToast() - No need to show toast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    .line 1203
    :cond_1
    :goto_0
    return-void

    .line 1175
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    const-string v1, "updateTapCaptureBubbleToast() - has popup bubble, skip the updating"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1182
    :cond_3
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_4

    .line 1184
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;

    const-string v1, "updateTapCaptureBubbleToast() - No need to update."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0801c0

    .line 1192
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_TapCaptureToastHandle:Lcom/htc/camera/Handle;

    .line 1193
    iput-boolean v3, p0, Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z

    goto :goto_0

    .line 1191
    :cond_5
    const v0, 0x7f0801c1

    goto :goto_1

    .line 1199
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_TapCaptureToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_7

    .line 1200
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_TapCaptureToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1201
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_TapCaptureToastHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 139
    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    .line 140
    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 141
    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 144
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 147
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 148
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 171
    :goto_0
    return-void

    .line 160
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 199
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 202
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 203
    const-class v0, Lcom/htc/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectControlUI;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    .line 204
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 205
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 206
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 207
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 208
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 211
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 212
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1, v3}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 215
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 234
    const v1, 0x7f0e01ac

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 235
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0e01ad

    invoke-virtual {v1, v4}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    .line 238
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v4, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/htc/camera/AutoDetectedScene;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_0
    const v1, 0x7f0e01a2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 245
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f0e01a3

    invoke-virtual {v1, v4}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    .line 248
    const v1, 0x7f0e01a4

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 249
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f0e01a5

    invoke-virtual {v1, v3}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const v3, 0x7f0e01a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    .line 251
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const v3, 0x7f0e01a6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    .line 252
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const v3, 0x7f0e01a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterPaddingView:Landroid/view/View;

    .line 253
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v3

    .line 254
    iget-boolean v1, v3, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    const v4, 0x7f0e01ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    .line 257
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterContainer:Landroid/view/View;

    const v4, 0x7f0e01aa

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PhotoRemainingCounterImageView:Landroid/widget/ImageView;

    .line 259
    :cond_1
    iget-boolean v1, v3, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounterContainer:Landroid/view/View;

    const v3, 0x7f0e01a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/htc/camera/rotate/UIRotation;)V

    .line 264
    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$2;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 273
    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$3;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 284
    iget-object v4, v2, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    new-instance v5, Lcom/htc/camera/component/IndicatorsUI$4;

    invoke-direct {v5, p0}, Lcom/htc/camera/component/IndicatorsUI$4;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 293
    iget-object v4, v2, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v4, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 294
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 295
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$5;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 306
    :cond_3
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$6;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 330
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$7;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$7;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 350
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$8;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$8;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 362
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$9;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$9;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 380
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$10;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$10;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 403
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$11;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$11;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 439
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$12;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$12;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 481
    if-eqz v0, :cond_4

    .line 482
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$13;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$14;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/camera/component/IndicatorsUI$14;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$15;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/camera/component/IndicatorsUI$15;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$16;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/camera/component/IndicatorsUI$16;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$17;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/camera/component/IndicatorsUI$17;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$18;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/IndicatorsUI$18;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 555
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 556
    if-eqz v0, :cond_5

    .line 557
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$19;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 567
    :cond_5
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$20;

    const-string v3, "Settings.RecordWithAudio"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI$20;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 578
    :cond_6
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$21;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/IndicatorsUI$21;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 597
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$22;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/IndicatorsUI$22;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 606
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$23;

    const-string v4, "Settings.IsFrontTapToCaptureEnabled"

    invoke-direct {v3, p0, v2, v4}, Lcom/htc/camera/component/IndicatorsUI$23;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 614
    invoke-virtual {p0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    new-instance v3, Lcom/htc/camera/component/IndicatorsUI$24;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/component/IndicatorsUI$24;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/c;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 629
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_7

    .line 631
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$25;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$25;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 645
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_8

    .line 647
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$26;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$26;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 656
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$27;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$27;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 673
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$28;

    const-string v3, "Settings.StorageSlot"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI$28;-><init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 689
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 697
    if-eq p1, p2, :cond_0

    .line 698
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 699
    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 707
    if-eq p1, p2, :cond_0

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 709
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/component/IndicatorsUI;->rotateIndicator(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 719
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/component/IndicatorsUI;->rotateIndicator(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/htc/camera/rotate/UIRotation;)V

    .line 720
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$29;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$29;-><init>(Lcom/htc/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/htc/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/component/n;)V

    .line 742
    :cond_1
    return-void
.end method
