.class Lcom/htc/camera/component/ToastManager;
.super Lcom/htc/camera/ak;
.source "ToastManager.java"


# instance fields
.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;

.field private m_IsToastTimeout:Z

.field private m_Toast:Landroid/widget/Toast;

.field private m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ToastContainerRotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 76
    const-string v0, "Toast Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/ak;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 68
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/u;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ToastManager;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ToastManager;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/camera/component/ToastManager;->m_IsToastTimeout:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/component/ToastManager$ToastHandle;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ToastManager;->showToast(Lcom/htc/camera/component/ToastManager$ToastHandle;)V

    return-void
.end method

.method private showToast(Lcom/htc/camera/component/ToastManager$ToastHandle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 331
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 358
    :goto_1
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;

    .line 359
    iput-boolean v3, p0, Lcom/htc/camera/component/ToastManager;->m_IsToastTimeout:Z

    .line 360
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ToastManager;->removeMessages(I)V

    .line 361
    const/16 v2, 0x2711

    const/16 v0, 0x2bc

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ToastManager;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 350
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 352
    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelToast(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelToast() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/ToastManager$ToastHandle;

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelToast() - invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    check-cast p1, Lcom/htc/camera/component/ToastManager$ToastHandle;

    iget-object v1, p1, Lcom/htc/camera/component/ToastManager$ToastHandle;->bubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Lcom/htc/camera/component/ToastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/ToastManager$1;-><init>(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ToastManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/ak;->deinitializeOverride()V

    .line 131
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/htc/camera/ak;->handleMessage(Landroid/os/Message;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;

    iget-object v1, v1, Lcom/htc/camera/component/ToastManager$ToastHandle;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->setToastRotation()V

    .line 146
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 148
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    const/16 v2, 0x2712

    const-wide/16 v3, 0x7d0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ToastManager;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 156
    iput-boolean v5, p0, Lcom/htc/camera/component/ToastManager;->m_IsToastTimeout:Z

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Handle;

    .line 161
    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    invoke-virtual {v1, v0}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 181
    invoke-super {p0}, Lcom/htc/camera/ak;->initializeOverride()V

    .line 184
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    .line 187
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 188
    if-eqz v0, :cond_0

    .line 190
    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ToastManager$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ToastManager$2;-><init>(Lcom/htc/camera/component/ToastManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 202
    :goto_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ToastManager$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ToastManager$3;-><init>(Lcom/htc/camera/component/ToastManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ToastManager$4;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ToastManager$4;-><init>(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ToastManager$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ToastManager$5;-><init>(Lcom/htc/camera/component/ToastManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 234
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No IAutoFocusController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setToastRotation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    .line 247
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v4

    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v5

    .line 250
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v0, Lcom/htc/camera/ScreenResolution;->statusBarHeight:I

    .line 252
    sget-object v6, Lcom/htc/camera/component/ToastManager$7;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    .line 266
    const/16 v0, 0x51

    .line 267
    iget-object v6, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v6, v7}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v7, v7, v7, v1}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    move v1, v0

    .line 272
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    iget-object v6, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainerRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-ne v0, v6, :cond_1

    .line 273
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0, v4, v5}, Landroid/widget/Toast;->setMargin(FF)V

    goto :goto_0

    .line 254
    :pswitch_0
    const/16 v0, 0x15

    .line 255
    iget-object v6, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v6, v7}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v1, v7, v7, v7}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    move v1, v0

    .line 256
    goto :goto_1

    .line 258
    :pswitch_1
    const/16 v0, 0x13

    .line 259
    iget-object v6, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v6, v7}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v7, v7, v1, v7}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    move v1, v0

    .line 260
    goto :goto_1

    .line 262
    :pswitch_2
    const/16 v0, 0x31

    .line 263
    iget-object v6, p0, Lcom/htc/camera/component/ToastManager;->m_ToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v6, v7}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v7, v1, v7, v7}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    move v1, v0

    .line 264
    goto :goto_1

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;

    invoke-virtual {v0, v5, v4}, Landroid/widget/Toast;->setMargin(FF)V

    goto/16 :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showToast(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/component/ToastManager;->showToast(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public showToast(Ljava/lang/String;I)Lcom/htc/camera/Handle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 289
    new-instance v8, Lcom/htc/camera/component/ToastManager$ToastHandle;

    invoke-direct {v8, p1}, Lcom/htc/camera/component/ToastManager$ToastHandle;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_0

    .line 294
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - cannot find IBubbleToastManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ToastManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Highest:Lcom/htc/camera/BubbleToastPriority;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v5

    .line 306
    iput-object v5, v8, Lcom/htc/camera/component/ToastManager$ToastHandle;->bubbleToastHandle:Lcom/htc/camera/Handle;

    .line 307
    const/16 v2, 0x2713

    int-to-long v6, p2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ToastManager;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    :goto_1
    move-object v0, v8

    .line 325
    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/htc/camera/component/ToastManager$6;

    invoke-direct {v0, p0, p1, v8, p2}, Lcom/htc/camera/component/ToastManager$6;-><init>(Lcom/htc/camera/component/ToastManager;Ljava/lang/String;Lcom/htc/camera/component/ToastManager$ToastHandle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ToastManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
