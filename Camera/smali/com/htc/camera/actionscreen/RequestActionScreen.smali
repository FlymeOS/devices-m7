.class public Lcom/htc/camera/actionscreen/RequestActionScreen;
.super Lcom/htc/camera/actionscreen/ActionScreen;
.source "RequestActionScreen.java"


# instance fields
.field private final m_ControlIntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_IsControlIntentReceiverRegistered:Z

.field private m_IsLayoutLoaded:Z

.field private m_IsRequestLayoutOpen:Z

.field private m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "Request Action Screen"

    const v1, 0x7f03007b

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;I)V

    .line 38
    new-instance v0, Lcom/htc/camera/actionscreen/RequestActionScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/RequestActionScreen$1;-><init>(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    iput-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ControlIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/actionscreen/RequestActionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->onDoneClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    return-void
.end method

.method private onDoneClicked()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->returnRequestedMedia()V

    .line 103
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onReCaptureClicked()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->deleteLatestMedia()V

    .line 167
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/actionscreen/RequestActionScreen;->close(Lcom/htc/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 169
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openRequestLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/htc/camera/actionscreen/RequestActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 193
    iput-boolean v5, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 196
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestFocus()Z

    .line 199
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsControlIntentReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    const-string v1, "com.htc.camera.intent.action.ACCEPT_TAKEN_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "com.htc.camera.intent.action.DROP_TAKEN_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ControlIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.camera.permission.CONTROL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 205
    iput-boolean v5, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsControlIntentReceiverRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iput-boolean v2, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->completeCloseActionScreen()V

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsControlIntentReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ControlIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    iput-boolean v2, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsControlIntentReceiverRegistered:Z

    .line 87
    :cond_1
    return-void
.end method

.method protected onKeyDown(ILcom/htc/camera/input/KeyEventArgs;)Z
    .locals 1

    .prologue
    .line 112
    iget v0, p2, Lcom/htc/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/htc/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->result:Lcom/htc/camera/io/FileSaveResult;

    sget-object v1, Lcom/htc/camera/io/FileSaveResult;->SUCCEEDED:Lcom/htc/camera/io/FileSaveResult;

    if-eq v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    .line 180
    :cond_0
    return-void
.end method

.method protected prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 216
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 218
    iget-boolean v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    if-nez v0, :cond_3

    .line 221
    const v0, 0x7f0e01e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 222
    const v0, 0x7f0e01e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 224
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v2, 0x7f020205

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 226
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v2, Lcom/htc/camera/actionscreen/RequestActionScreen$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/actionscreen/RequestActionScreen$2;-><init>(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v2, 0x7f0201f9

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 237
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v2, Lcom/htc/camera/actionscreen/RequestActionScreen$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/actionscreen/RequestActionScreen$3;-><init>(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_1
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget-object v3, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 251
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestLayout()V

    .line 252
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget-object v3, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 254
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {v0}, Lcom/htc/camera/widget/CaptureBarButton;->requestLayout()V

    .line 258
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_DoneButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/actionscreen/RequestActionScreen;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 263
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/actionscreen/RequestActionScreen;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 266
    instance-of v0, v1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 267
    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 268
    :cond_4
    invoke-static {v1, v4}, Lcom/htc/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 269
    invoke-static {v1, v4}, Lcom/htc/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 270
    return-void
.end method
