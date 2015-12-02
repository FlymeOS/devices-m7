.class final Lcom/htc/camera/component/ProcessingDialogManager;
.super Lcom/htc/camera/ab;
.source "ProcessingDialogManager.java"


# instance fields
.field private m_CloseDialogWhenPausing:Z

.field private m_CurrentDialogHandle:Lcom/htc/camera/Handle;

.field private m_Dialog:Landroid/view/View;

.field private m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_DialogTextView:Landroid/widget/TextView;

.field private m_MaxDialogWidthLandscape:I

.field private m_MaxDialogWidthPortrait:I

.field private m_ShowSystemBarHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 44
    const-string v0, "Processing Dialog Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/ab;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 35
    iput v3, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthLandscape:I

    .line 36
    iput v3, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthPortrait:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ProcessingDialogManager;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ProcessingDialogManager;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ProcessingDialogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/Handle;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/htc/camera/Handle;Ljava/lang/String;I)V

    return-void
.end method

.method private showProcessingDialog(Lcom/htc/camera/Handle;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "showProcessingDialog() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v2, "showProcessingDialog() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    .line 208
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z

    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v2, 0x7f0e00dc

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e00dd

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f0e01df

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/camera/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ProcessingDialogManager;->updateDialogSize(Lcom/htc/camera/rotate/UIRotation;)V

    .line 232
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/ProcessingDialogManager;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 208
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDialogSize(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 251
    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthLandscape:I

    if-gez v0, :cond_1

    .line 254
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fe947ae147ae148L    # 0.79

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthLandscape:I

    .line 255
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthLandscape:I

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/htc/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_0

    .line 259
    :cond_2
    iget v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthPortrait:I

    if-gez v0, :cond_3

    .line 260
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    const v1, 0x7f0a016a

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ProcessingDialogManager;->getDimension(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthPortrait:I

    .line 261
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_MaxDialogWidthPortrait:I

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_Dialog:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public closeProcessingDialog(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    if-nez p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/htc/camera/component/ProcessingDialogManager$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/ProcessingDialogManager$1;-><init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ProcessingDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v1, "closeProcessingDialog() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/ProcessingDialogManager;->showUI(Landroid/view/View;ZZ)V

    .line 85
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->hideNavigationBar(Lcom/htc/camera/Handle;)V

    .line 88
    iput-object v3, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    .line 92
    :cond_3
    iput-object v3, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ProcessingDialogManager;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 105
    iput-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 106
    iput-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogTextView:Landroid/widget/TextView;

    .line 109
    invoke-super {p0}, Lcom/htc/camera/ab;->deinitializeOverride()V

    .line 110
    return-void
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/htc/camera/ab;->initializeOverride()V

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ProcessingDialogManager$2;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/ProcessingDialogManager$2;-><init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/component/ProcessingDialogManager;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 144
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/ProcessingDialogManager;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 153
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager;->m_DialogContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 164
    invoke-direct {p0, p2}, Lcom/htc/camera/component/ProcessingDialogManager;->updateDialogSize(Lcom/htc/camera/rotate/UIRotation;)V

    .line 166
    :cond_0
    return-void
.end method

.method public showProcessingDialog(Ljava/lang/String;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "ProcessingDialog"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v2, "showProcessingDialog() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogManager;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/htc/camera/Handle;Ljava/lang/String;I)V

    .line 193
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;

    const-string v2, "showProcessingDialog() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcom/htc/camera/component/ProcessingDialogManager$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/htc/camera/component/ProcessingDialogManager$3;-><init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/SessionHandle;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ProcessingDialogManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
