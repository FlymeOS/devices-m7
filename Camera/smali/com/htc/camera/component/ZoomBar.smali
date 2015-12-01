.class public final Lcom/htc/camera/component/ZoomBar;
.super Lcom/htc/camera/IZoomBar;
.source "ZoomBar.java"


# instance fields
.field private m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

.field private m_IsUpdatingZoom:Z

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomBarContainer:Landroid/view/View;

.field private m_ZoomBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private m_ZoomInButton:Landroid/view/View;

.field private m_ZoomOutButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 94
    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/IZoomBar;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 56
    new-instance v0, Lcom/htc/camera/component/ZoomBar$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ZoomBar$1;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ZoomBar;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ZoomBar;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ZoomBar;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/ZoomBar;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ZoomBar;->updateZoomBar(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ZoomBar;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->showZoomBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ZoomBar;)Lcom/htc/camera/mainbar/IExpandableMenuUI;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    return-object v0
.end method

.method private cancelAutoFocus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getFocusingState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 112
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 108
    :pswitch_1
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 110
    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideZoomBar()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->isEnableAnimation()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 173
    :cond_0
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ZoomBar;->removeMessages(I)V

    .line 174
    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ZoomBar;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private isEnableAnimation()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method private showZoomBar()V
    .locals 4

    .prologue
    const/16 v3, 0x2714

    .line 467
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 470
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    :cond_2
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V

    .line 493
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 495
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ZoomBar;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p0, v3}, Lcom/htc/camera/component/ZoomBar;->removeMessages(I)V

    .line 501
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p0, v3, v0, v1}, Lcom/htc/camera/component/ZoomBar;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0
.end method

.method private syncFromCurrentZoom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 511
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->TAG:Ljava/lang/String;

    const-string v1, "syncFromCurrentZoom()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 516
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    .line 517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 518
    if-eqz v0, :cond_1

    .line 520
    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncFromCurrentZoom() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v1, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 522
    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 529
    :goto_0
    iput-boolean v5, p0, Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 531
    :cond_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->TAG:Ljava/lang/String;

    const-string v1, "syncFromCurrentZoom() - No zoom range"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method

.method private updateZoomBar(Z)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 423
    if-nez p1, :cond_1

    .line 424
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 430
    :cond_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/htc/camera/IZoomBar;->handleMessage(Landroid/os/Message;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V

    goto/16 :goto_0

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->showZoomBar()V

    goto/16 :goto_0

    .line 157
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-super {p0}, Lcom/htc/camera/IZoomBar;->initializeOverride()V

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0208

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v2, 0x7f0e020a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v2, 0x7f0e0209

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v2, 0x7f0e020b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v2, 0x7f0e020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    new-instance v2, Lcom/htc/camera/component/ZoomBar$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$2;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$3;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 240
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$4;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 253
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->restartingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$5;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 283
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$6;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 293
    new-instance v0, Lcom/htc/camera/component/ZoomBar$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ZoomBar$7;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    .line 301
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 302
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 312
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$8;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$9;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ZoomBar$9;-><init>(Lcom/htc/camera/component/ZoomBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$10;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 352
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$11;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 364
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$12;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 374
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$13;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$14;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ZoomBar$14;-><init>(Lcom/htc/camera/component/ZoomBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$15;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ZoomBar$15;-><init>(Lcom/htc/camera/component/ZoomBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-nez v0, :cond_0

    .line 402
    const-class v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ZoomBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ZoomBar$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ZoomBar$16;-><init>(Lcom/htc/camera/component/ZoomBar;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 414
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ZoomBar;->updateZoomBar(Z)V

    .line 415
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V

    .line 417
    :cond_1
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 438
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 439
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 448
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 449
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 458
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/ZoomBar;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 459
    return-void
.end method
