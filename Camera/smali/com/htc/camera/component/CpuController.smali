.class final Lcom/htc/camera/component/CpuController;
.super Lcom/htc/camera/component/CameraComponent;
.source "CpuController.java"

# interfaces
.implements Lcom/htc/camera/ICpuController;


# instance fields
.field private m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

.field private final m_CpuCountLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/component/CpuController$CpuCountLockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

.field private final m_CpuFrequencyLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 68
    const-string v0, "CPU Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuCount(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuFrequency(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuCountInternal(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuFrequencyInternal(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method private lockCpuCountInternal(Lcom/htc/camera/component/CpuController$CpuCountLockHandle;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "lockCpuCountInternal() - Minimum CPU count : "

    iget v2, p1, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;->minCpuCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuCountControl()V

    .line 156
    :try_start_0
    iget v0, p1, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;->minCpuCount:I

    packed-switch v0, :pswitch_data_0

    .line 162
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_NUM_DUAL()I

    move-result v0

    .line 163
    const/4 v1, 0x2

    iput v1, p1, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;->minCpuCount:I

    .line 166
    new-instance v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    invoke-virtual {p0}, Lcom/htc/camera/component/CpuController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_NUM()I

    move-result v3

    const-string v4, "HTC-Camera"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->acquire(J)V

    .line 168
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CpuController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const/16 v0, 0x2711

    const-wide/16 v1, 0x2328

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/component/CpuController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 172
    :cond_1
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;

    iget v1, p1, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;->minCpuCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 180
    :goto_0
    return-void

    .line 159
    :pswitch_0
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/lib0/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    iget-object v1, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v2, "lockCpuCountInternal() - Fail to create control"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuCountControl()V

    .line 178
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private lockCpuFrequencyInternal(Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;Z)V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "lockCpuFrequencyInternal() - Minimum CPU frequency : "

    iget-object v2, p1, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;->minFrequency:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    if-eqz p2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuFrequencyControl()V

    .line 234
    :try_start_0
    sget-object v0, Lcom/htc/camera/component/CpuController$5;->$SwitchMap$com$htc$camera$ICpuController$CpuFrequency:[I

    iget-object v1, p1, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;->minFrequency:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-virtual {v1}, Lcom/htc/camera/ICpuController$CpuFrequency;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_FREQ_LOWEST()I

    move-result v0

    .line 252
    :goto_0
    new-instance v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    invoke-virtual {p0}, Lcom/htc/camera/component/CpuController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_FREQ()I

    move-result v3

    const-string v4, "HTC-Camera"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->acquire(J)V

    .line 254
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CpuController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const/16 v0, 0x2711

    const-wide/16 v1, 0x2328

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/component/CpuController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 258
    :cond_1
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_FREQUENCY:Lcom/htc/camera/base/PropertyKey;

    iget-object v1, p1, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;->minFrequency:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 266
    :goto_1
    return-void

    .line 237
    :pswitch_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_FREQ_HIGHEST()I

    move-result v0

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_FREQ_HIGH()I

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_FREQ_MEDIUM()I

    move-result v0

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_FREQ_LOWEST()I
    :try_end_0
    .catch Lcom/htc/lib0/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    iget-object v1, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v2, "lockCpuFrequencyInternal() - Fail to create control"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuFrequencyControl()V

    .line 264
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_FREQUENCY:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private releaseCpuCountControl()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "releaseCpuCountControl()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    invoke-virtual {v0}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->release()V
    :try_end_0
    .catch Lcom/htc/lib0/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    .line 284
    :cond_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    iget-object v1, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v2, "releaseCpuCountControl() - Fail to release control"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private releaseCpuFrequencyControl()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "releaseCpuFrequencyControl()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    invoke-virtual {v0}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->release()V
    :try_end_0
    .catch Lcom/htc/lib0/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyControl:Lcom/htc/lib3/android/os/HtcPMCpuCtrl;

    .line 300
    :cond_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 296
    iget-object v1, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v2, "releaseCpuFrequencyControl() - Fail to release control"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unlockCpuCount(Lcom/htc/camera/Handle;I)V
    .locals 2

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuCount() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CpuController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuCountInternal(Lcom/htc/camera/Handle;I)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuCount() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/htc/camera/component/CpuController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/CpuController$3;-><init>(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CpuController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuCount() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCpuCountInternal(Lcom/htc/camera/Handle;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v3, "unlockCpuCountInternal() - Handle : "

    invoke-static {v0, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    move v0, v1

    .line 337
    :goto_0
    iget-object v3, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 339
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuCountInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 336
    goto :goto_0

    .line 344
    :cond_2
    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuCountControl()V

    .line 349
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/CpuController;->lockCpuCountInternal(Lcom/htc/camera/component/CpuController$CpuCountLockHandle;Z)V

    goto :goto_1
.end method

.method private unlockCpuFrequency(Lcom/htc/camera/Handle;I)V
    .locals 2

    .prologue
    .line 360
    if-nez p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuFrequency() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CpuController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/CpuController;->unlockCpuFrequencyInternal(Lcom/htc/camera/Handle;I)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuFrequency() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/htc/camera/component/CpuController$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/CpuController$4;-><init>(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CpuController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuFrequency() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCpuFrequencyInternal(Lcom/htc/camera/Handle;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v2, "unlockCpuFrequencyInternal() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 391
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->TAG:Ljava/lang/String;

    const-string v1, "unlockCpuFrequencyInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 390
    goto :goto_0

    .line 398
    :cond_2
    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuFrequencyControl()V

    .line 403
    sget-object v0, Lcom/htc/camera/component/CpuController;->PROPERTY_MINIMUM_CPU_FREQUENCY:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->lockCpuFrequencyInternal(Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuCountControl()V

    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CpuController;->releaseCpuFrequencyControl()V

    .line 82
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 83
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuCountLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->lockCpuCountInternal(Lcom/htc/camera/component/CpuController$CpuCountLockHandle;Z)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/camera/component/CpuController;->m_CpuFrequencyLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CpuController;->lockCpuFrequencyInternal(Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;Z)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
