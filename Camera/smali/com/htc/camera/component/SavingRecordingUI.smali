.class public final Lcom/htc/camera/component/SavingRecordingUI;
.super Lcom/htc/camera/component/cm;
.source "SavingRecordingUI.java"


# instance fields
.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 31
    const-string v0, "Saving Recording UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SavingRecordingUI;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/camera/component/SavingRecordingUI;->showSavingRecordingUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SavingRecordingUI;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/camera/component/SavingRecordingUI;->hideSavingRecordingUI()V

    return-void
.end method

.method private hideSavingRecordingUI()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "hideSavingRecordingUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_0

    .line 106
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 113
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 114
    if-eqz v0, :cond_3

    .line 115
    iget-object v1, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 118
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "hideSavingRecordingUI() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/component/SavingRecordingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SavingRecordingUI$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SavingRecordingUI$1;-><init>(Lcom/htc/camera/component/SavingRecordingUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 76
    return-void
.end method

.method private showSavingRecordingUI()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "showSavingRecordingUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_0

    .line 86
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_1
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 92
    if-eqz v0, :cond_2

    .line 93
    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SavingRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "showSavingRecordingUI() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 43
    invoke-direct {p0}, Lcom/htc/camera/component/SavingRecordingUI;->setupPropertyChangedCallbacks()V

    .line 44
    return-void
.end method
