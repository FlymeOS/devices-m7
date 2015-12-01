.class final Lcom/htc/camera/component/HeadsetButtonController;
.super Lcom/htc/camera/component/IntentReceiver;
.source "HeadsetButtonController.java"


# instance fields
.field private m_ActionScreenDisableCounter:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    .line 32
    const-string v1, "Headset Button Controller"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/HeadsetButtonController;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    return v0
.end method

.method static synthetic access$006(Lcom/htc/camera/component/HeadsetButtonController;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    return v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->initializeOverride()V

    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/htc/camera/component/HeadsetButtonController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/HeadsetButtonController$1;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/HeadsetButtonController$1;-><init>(Lcom/htc/camera/component/HeadsetButtonController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/htc/camera/component/HeadsetButtonController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/HeadsetButtonController$2;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/HeadsetButtonController$2;-><init>(Lcom/htc/camera/component/HeadsetButtonController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->TAG:Ljava/lang/String;

    const-string v1, "Trigger taking picture by phone button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 81
    const-string v1, "Press Headset Camera Button"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/HeadsetButtonController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot take picture"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/KeyEvent;

    .line 95
    if-nez v7, :cond_3

    .line 97
    iget-object v0, p0, Lcom/htc/camera/component/HeadsetButtonController;->TAG:Ljava/lang/String;

    const-string v1, "onIntentReceived() - No key event"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 107
    :sswitch_0
    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    const/4 v0, 0x1

    move v8, v0

    .line 120
    :goto_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x1b

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 126
    new-instance v1, Lcom/htc/camera/input/KeyEventArgs;

    invoke-direct {v1, v0}, Lcom/htc/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 129
    if-eqz v8, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 113
    :pswitch_1
    const/4 v0, 0x0

    move v8, v0

    .line 114
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/component/HeadsetButtonController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReceiverRegistered()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->onReceiverRegistered()V

    .line 153
    return-void
.end method

.method protected onReceiverUnregistered()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->onReceiverUnregistered()V

    .line 169
    return-void
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 177
    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 180
    return-void
.end method
