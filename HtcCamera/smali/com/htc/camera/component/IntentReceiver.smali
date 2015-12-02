.class public abstract Lcom/htc/camera/component/IntentReceiver;
.super Lcom/htc/camera/component/cm;
.source "IntentReceiver.java"


# instance fields
.field private final m_IntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_IsReceiverRegistered:Z

.field private m_Permission:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 26
    new-instance v0, Lcom/htc/camera/component/IntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/IntentReceiver$1;-><init>(Lcom/htc/camera/component/IntentReceiver;)V

    iput-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    if-ne p4, p5, :cond_0

    .line 54
    const-string v0, "timeToRegister equals to timeToUnregister"

    invoke-static {p1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeToRegister equals to timeToUnregister"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    iget-object v2, p3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    .line 65
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 84
    :goto_0
    if-eqz v2, :cond_1

    .line 86
    iget-object v3, p0, Lcom/htc/camera/component/IntentReceiver;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/IntentReceiver$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/htc/camera/component/IntentReceiver$2;-><init>(Lcom/htc/camera/component/IntentReceiver;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    packed-switch p5, :pswitch_data_1

    .line 119
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_1
    iget-object v2, p3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    .line 69
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Intent receiver will be registered when activity is pausing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    .line 74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, v1

    move-object v2, v1

    .line 79
    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Intent receiver will be unregistered when activity is resuming"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    .line 104
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 122
    :goto_1
    :pswitch_5
    if-eqz v1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/htc/camera/component/IntentReceiver;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/camera/component/IntentReceiver$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/camera/component/IntentReceiver$3;-><init>(Lcom/htc/camera/component/IntentReceiver;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    return-void

    .line 107
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Intent receiver will be unregistered when preview is started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    .line 109
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 112
    :pswitch_7
    iget-object v1, p3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    .line 113
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 99
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/IntentReceiver;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_Permission:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected onReceiverRegistered()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected onReceiverUnregistered()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected abstract prepareIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method protected final registerReceiver(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 188
    iget-boolean v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver() - Already registered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    invoke-virtual {p0, v0}, Lcom/htc/camera/component/IntentReceiver;->prepareIntentFilter(Landroid/content/IntentFilter;)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    .line 203
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->onReceiverRegistered()V

    .line 205
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setPermission(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/camera/component/IntentReceiver;->m_Permission:Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected final unregisterReceiver()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 225
    iget-boolean v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - Already unregistered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    .line 236
    invoke-virtual {p0}, Lcom/htc/camera/component/IntentReceiver;->onReceiverUnregistered()V

    .line 238
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
