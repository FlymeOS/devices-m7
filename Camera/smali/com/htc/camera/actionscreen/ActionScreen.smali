.class public abstract Lcom/htc/camera/actionscreen/ActionScreen;
.super Lcom/htc/camera/component/cm;
.source "ActionScreen.java"


# instance fields
.field public final closeReason:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_ClosingBlockHandle:Lcom/htc/camera/Handle;

.field private m_IsCaptureFailed:Z

.field private m_IsMediaSaved:Z

.field private m_IsPrepared:Z

.field private m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

.field private m_Layout:Landroid/view/View;

.field private m_LayoutID:I

.field public final state:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;I)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    const v1, 0x7f0e010b

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 59
    iput p3, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LayoutID:I

    .line 62
    const-string v0, "ActionScreen.CloseReason"

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, p0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->closeReason:Lcom/htc/camera/property/Property;

    .line 63
    const-string v0, "ActionScreen.State"

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-static {v0, p0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/actionscreen/ActionScreen;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/actionscreen/ActionScreen;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/actionscreen/ActionScreen;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/camera/actionscreen/ActionScreen;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/htc/camera/actionscreen/ActionScreen;Lcom/htc/camera/io/MediaSaveEventArgs;)Lcom/htc/camera/io/MediaSaveEventArgs;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/actionscreen/ActionScreen;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->closeReason:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0, p2}, Lcom/htc/camera/actionscreen/ActionScreen;->close(Z)V

    .line 99
    return-void
.end method

.method public final close(Z)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "close() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is already closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 81
    :cond_0
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const-string v1, "Closing action screen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->closeActionScreen(Z)V

    .line 90
    if-nez p1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->completeCloseActionScreen()V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "close() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract closeActionScreen(Z)V
.end method

.method protected final completeCloseActionScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "completeCloseActionScreen() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 117
    :cond_0
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    .line 118
    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 120
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    .line 123
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->closeReason:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    .line 126
    iput-object v2, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    .line 128
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "completeCloseActionScreen() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 138
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 141
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 142
    return-void
.end method

.method protected final getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    return-object v0
.end method

.method public final getTargetCaptureHandle()Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 170
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 172
    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->closeReason:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->actionScreenCloseReason:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 175
    new-instance v1, Lcom/htc/camera/actionscreen/ActionScreen$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/ActionScreen$1;-><init>(Lcom/htc/camera/actionscreen/ActionScreen;)V

    .line 211
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/actionscreen/ActionScreen$2;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/ActionScreen$2;-><init>(Lcom/htc/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 219
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/actionscreen/ActionScreen$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/actionscreen/ActionScreen$3;-><init>(Lcom/htc/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 227
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 228
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 231
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/htc/camera/actionscreen/ActionScreen$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/actionscreen/ActionScreen$4;-><init>(Lcom/htc/camera/actionscreen/ActionScreen;)V

    .line 261
    new-instance v2, Lcom/htc/camera/actionscreen/ActionScreen$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen$5;-><init>(Lcom/htc/camera/actionscreen/ActionScreen;Lcom/htc/camera/CameraThread;Lcom/htc/camera/event/a;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public final isClosing()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMediaSaved()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOpening()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureFailed()V
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 309
    return-void
.end method

.method protected onKeyDown(ILcom/htc/camera/input/KeyEventArgs;)Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyUp(ILcom/htc/camera/input/KeyEventArgs;)Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public final open()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "open() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not prepared"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->openActionScreen()V

    .line 355
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    if-eqz v0, :cond_2

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    .line 361
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v0, v0, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-ne v0, v1, :cond_3

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    .line 368
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "open() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract openActionScreen()V
.end method

.method public final prepare(Lcom/htc/camera/CaptureHandle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Capture handle : \'"

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - Null capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LayoutID:I

    if-lez v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 392
    iget v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_LayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    .line 393
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/ActionScreen;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 397
    :cond_1
    iput-boolean v4, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    .line 398
    iput-boolean v4, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    .line 399
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 402
    invoke-virtual {p0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    .line 405
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 382
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method protected abstract prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V
.end method
