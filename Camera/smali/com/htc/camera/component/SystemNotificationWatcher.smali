.class final Lcom/htc/camera/component/SystemNotificationWatcher;
.super Lcom/htc/camera/component/IntentReceiver;
.source "SystemNotificationWatcher.java"


# instance fields
.field private m_ShowNavigationBarHandle:Lcom/htc/camera/Handle;

.field private m_ShowStatusBarHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 38
    const-string v1, "Notification Watcher"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V

    .line 39
    const-string v0, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SystemNotificationWatcher;->setPermission(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SystemNotificationWatcher;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/camera/component/SystemNotificationWatcher;->hideNotificationUI()V

    return-void
.end method

.method private hideNotificationUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowStatusBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/component/SystemNotificationWatcher;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowStatusBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->hideStatusBar(Lcom/htc/camera/Handle;)V

    .line 68
    iput-object v2, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowStatusBarHandle:Lcom/htc/camera/Handle;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowNavigationBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/htc/camera/component/SystemNotificationWatcher;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowNavigationBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->hideNavigationBar(Lcom/htc/camera/Handle;)V

    .line 73
    iput-object v2, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->m_ShowNavigationBarHandle:Lcom/htc/camera/Handle;

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcom/htc/camera/component/IntentReceiver;->handleMessage(Landroid/os/Message;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/SystemNotificationWatcher;->hideNotificationUI()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 84
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->initializeOverride()V

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/component/SystemNotificationWatcher;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/htc/camera/component/SystemNotificationWatcher;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/SystemNotificationWatcher$1;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/SystemNotificationWatcher$1;-><init>(Lcom/htc/camera/component/SystemNotificationWatcher;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SystemNotificationWatcher$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SystemNotificationWatcher$2;-><init>(Lcom/htc/camera/component/SystemNotificationWatcher;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 115
    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 127
    invoke-super {p0, p1, p2}, Lcom/htc/camera/component/IntentReceiver;->onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
