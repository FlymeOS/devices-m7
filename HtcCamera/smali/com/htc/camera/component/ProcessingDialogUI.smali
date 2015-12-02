.class public Lcom/htc/camera/component/ProcessingDialogUI;
.super Lcom/htc/camera/component/CameraComponent;
.source "ProcessingDialogUI.java"


# instance fields
.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 37
    const-string v0, "Processing Dialog UI"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ProcessingDialogUI;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/component/ProcessingDialogUI;->closeProcessingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ProcessingDialogUI;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/component/ProcessingDialogUI;->showProcessingDialog()V

    return-void
.end method

.method private closeProcessingDialog()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 101
    :cond_0
    return-void
.end method

.method private showProcessingDialog()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/component/ProcessingDialogUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 52
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ProcessingDialogUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - Cannot get IProcessingDialogManager"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ProcessingDialogUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ProcessingDialogUI$1;-><init>(Lcom/htc/camera/component/ProcessingDialogUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 74
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->shutterEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ProcessingDialogUI$2;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/ProcessingDialogUI$2;-><init>(Lcom/htc/camera/component/ProcessingDialogUI;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 89
    return-void
.end method
