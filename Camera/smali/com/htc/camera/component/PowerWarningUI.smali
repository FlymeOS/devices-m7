.class public Lcom/htc/camera/component/PowerWarningUI;
.super Lcom/htc/camera/component/cm;
.source "PowerWarningUI.java"


# instance fields
.field private m_CameraThread:Lcom/htc/camera/CameraThread;

.field private m_HTCCamera:Lcom/htc/camera/HTCCamera;

.field private m_IsLowPower:Z

.field private m_IsShown:Z

.field private m_PowerWarningBase:Landroid/view/View;

.field private m_PowerWarningContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_PowerWarningController:Lcom/htc/camera/component/PowerWarningController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    const-string v0, "PowerWarning UI"

    const/4 v1, 0x1

    const v2, 0x7f0e00fd

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 36
    iput-boolean v3, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsShown:Z

    .line 37
    iput-boolean v3, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/PowerWarningUI;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/PowerWarningUI;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/camera/component/PowerWarningUI;->resetPowerWarningSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/PowerWarningUI;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    return-void
.end method

.method private hideLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/PowerWarningUI;->showUI(Landroid/view/View;ZZ)V

    .line 194
    iput-boolean v1, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsShown:Z

    .line 197
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/htc/camera/component/PowerWarningUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 135
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/PowerWarningUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PowerWarningUI$2;-><init>(Lcom/htc/camera/component/PowerWarningUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 145
    iget-object v1, p0, Lcom/htc/camera/component/PowerWarningUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/PowerWarningUI$3;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/PowerWarningUI$3;-><init>(Lcom/htc/camera/component/PowerWarningUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/htc/camera/component/PowerWarningUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/PowerWarningUI$4;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/PowerWarningUI$4;-><init>(Lcom/htc/camera/component/PowerWarningUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private resetPowerWarningSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->setPowerWarning(Z)V

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/PowerWarningUI;->hideLayout()V

    .line 210
    return-void
.end method

.method private updateWarningLayout(Z)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->TAG:Ljava/lang/String;

    const-string v1, "m_HTCCamera == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_CameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->TAG:Ljava/lang/String;

    const-string v1, "m_CameraThread == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/PowerWarningUI;->hideLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isBlockPowerWarning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iput-boolean v1, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->TAG:Ljava/lang/String;

    const-string v1, "HTCCamera.isBlockPowerWarning = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/htc/camera/component/PowerWarningUI;->m_IsLowPower:Z

    .line 116
    invoke-direct {p0, v1}, Lcom/htc/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/htc/camera/component/PowerWarningController;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/htc/camera/component/PowerWarningUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const-string v1, "PowerWarning Controller"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PowerWarningController;

    iput-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/htc/camera/component/PowerWarningController;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/htc/camera/component/PowerWarningController;

    invoke-virtual {v0, p0}, Lcom/htc/camera/component/PowerWarningController;->link(Lcom/htc/camera/component/PowerWarningUI;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/camera/component/PowerWarningUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    const v1, 0x7f0e01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 68
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 70
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    new-instance v1, Lcom/htc/camera/component/PowerWarningUI$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PowerWarningUI$1;-><init>(Lcom/htc/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/htc/camera/component/PowerWarningUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/htc/camera/HTCCamera;

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/component/PowerWarningUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PowerWarningUI;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 82
    invoke-direct {p0}, Lcom/htc/camera/component/PowerWarningUI;->registerListeners()V

    .line 84
    return-void
.end method
