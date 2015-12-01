.class public Lcom/htc/camera/io/SDCardUI;
.super Lcom/htc/camera/io/e;
.source "SDCardUI.java"


# instance fields
.field private m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

.field private m_ClassLevel:I

.field private m_ClassLevelBackgroundWorkerHandle:Lcom/htc/camera/Handle;

.field private m_HasDialog:Z

.field private m_LastTimeShowDialog:J

.field private m_PenddingShowDialog:Z

.field private m_PendingDismissListners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_PerformanceLowCount:I

.field private final m_ReadClassLevelRunnable:Ljava/lang/Runnable;

.field private final m_ReadSerialRunnable:Ljava/lang/Runnable;

.field private m_Serial:Ljava/lang/String;

.field private m_SerialBackgroundWorkerHandle:Lcom/htc/camera/Handle;

.field private m_SharedBackgroundWorker:Lcom/htc/camera/ag;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    .line 130
    const-string v1, "SD Card UI"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/io/e;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PendingDismissListners:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/htc/camera/io/SDCardUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/SDCardUI$1;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_ReadClassLevelRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/htc/camera/io/SDCardUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/SDCardUI$2;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_ReadSerialRunnable:Ljava/lang/Runnable;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->checkSerial()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SDCardUI;->setClassLevel(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SDCardUI;->setPerformanceLowCount(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/io/SDCardUI;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/camera/io/SDCardUI;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/component/Component;IJZ)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/io/SDCardUI;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/camera/io/SDCardUI;->m_HasDialog:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/io/SDCardUI;I)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->checkQuality()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkQuality()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevelBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevelBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->cancelTask(Lcom/htc/camera/Handle;)Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevelBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkQuality() - Storage is internal, set class level to 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/io/SDCardUI;->setClassLevel(I)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkQuality() - Check from worker thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->linkToBackgroundWorker()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_ReadClassLevelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevelBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkQuality() - Cannot link to background worker"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkSerial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SerialBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_SerialBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->cancelTask(Lcom/htc/camera/Handle;)Z

    .line 170
    iput-object v2, p0, Lcom/htc/camera/io/SDCardUI;->m_SerialBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    .line 174
    :cond_0
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkSerial() - SD card is not support, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v2}, Lcom/htc/camera/io/SDCardUI;->setSerial(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkSerial() - Check from worker thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->linkToBackgroundWorker()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_ReadSerialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SerialBackgroundWorkerHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "checkSerial() - Cannot link to background worker"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finishImprovementDialog()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PendingDismissListners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .line 196
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PendingDismissListners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    return-void
.end method

.method private linkToBackgroundWorker()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_0

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 336
    :cond_0
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SDCardUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    .line 337
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_1

    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setClassLevel(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    .line 392
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "setClassLevel() - Storage is internal, set class value to 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput v2, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevel:I

    .line 406
    :goto_0
    return-void

    .line 399
    :cond_0
    if-gtz p1, :cond_1

    .line 400
    iput v2, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevel:I

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "setClassLevel() - Class: "

    iget v2, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :cond_1
    iput p1, p0, Lcom/htc/camera/io/SDCardUI;->m_ClassLevel:I

    goto :goto_1
.end method

.method private setPerformanceLowCount(I)V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "setPerformanceLowCount() - Count: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    iput p1, p0, Lcom/htc/camera/io/SDCardUI;->m_PerformanceLowCount:I

    .line 447
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_performance_low_count"

    iget v2, p0, Lcom/htc/camera/io/SDCardUI;->m_PerformanceLowCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method private setSerial(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_sdcard_serial"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v3, "setSerial() - Set serial: "

    invoke-static {v2, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    .line 421
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 424
    :cond_2
    const/4 v0, 0x1

    .line 427
    :goto_0
    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_sdcard_serial"

    iget-object v3, p0, Lcom/htc/camera/io/SDCardUI;->m_Serial:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v2, "setSerial() - SD card changed, reset performance flag"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v1}, Lcom/htc/camera/io/SDCardUI;->setPerformanceLowCount(I)V

    .line 437
    :cond_3
    return-void

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_sdcard_serial"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->remove(Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private showHigherClassLevelToast()V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 460
    :cond_0
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SDCardUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 461
    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v2, "showHigherClassLevelToast() - Show toast"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const v1, 0x7f080399

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showHigherClassLevelToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showImprovePerformanceDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 478
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v2

    .line 481
    iget-boolean v0, p0, Lcom/htc/camera/io/SDCardUI;->m_HasDialog:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Already show dialog"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Activity is paused, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V

    goto :goto_0

    .line 496
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/htc/camera/io/SDCardUI;->m_LastTimeShowDialog:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Too close, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Show dialog after previous dialog closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iput-boolean v7, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    goto :goto_0

    .line 512
    :cond_3
    sget-object v3, Lcom/htc/camera/io/SDCardUI$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 525
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Show dialog after taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iput-boolean v7, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    goto :goto_0

    .line 519
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Show dialog after recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iput-boolean v7, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    goto/16 :goto_0

    .line 534
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_6

    .line 536
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 538
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() - Show dialog after camera menu UI closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iput-boolean v7, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    goto/16 :goto_0

    .line 544
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v3, "showImprovePerformanceDialog() - Cannot find ICameraMenuUI"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_7
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    const v3, 0x7f08037d

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 549
    const v3, 0x7f080380

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 550
    const v3, 0x7f08037e

    new-instance v4, Lcom/htc/camera/io/SDCardUI$8;

    invoke-direct {v4, p0}, Lcom/htc/camera/io/SDCardUI$8;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 558
    const v3, 0x7f08037f

    new-instance v4, Lcom/htc/camera/io/SDCardUI$9;

    invoke-direct {v4, p0, v2}, Lcom/htc/camera/io/SDCardUI$9;-><init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/CameraSettings;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 568
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v2

    .line 571
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 572
    if-eqz v0, :cond_8

    .line 574
    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v3, "showImprovePerformanceDialog() -  Show"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v1, Lcom/htc/camera/io/SDCardUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/io/SDCardUI$10;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    .line 588
    iput-boolean v7, p0, Lcom/htc/camera/io/SDCardUI;->m_HasDialog:Z

    .line 589
    iput-boolean v8, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    iput-boolean v8, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    .line 590
    const/16 v3, 0x2714

    invoke-virtual {p0, v3}, Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V

    .line 591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/io/SDCardUI;->m_LastTimeShowDialog:J

    .line 594
    invoke-virtual {v0, v2, v1, v8}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 598
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "showImprovePerformanceDialog() -  Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V

    goto/16 :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/io/SDCardUI;->setClassLevel(I)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/camera/io/SDCardUI;->setSerial(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->showHigherClassLevelToast()V

    goto :goto_0

    .line 220
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->showImprovePerformanceDialog()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 232
    invoke-super {p0}, Lcom/htc/camera/io/e;->initializeOverride()V

    .line 235
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 236
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SDCardUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICameraMenuUI;

    iput-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    .line 237
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - Cannot find camera menu UI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_performance_low_count"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PerformanceLowCount:I

    .line 244
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->checkQuality()V

    .line 245
    invoke-direct {p0}, Lcom/htc/camera/io/SDCardUI;->checkSerial()V

    .line 248
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/io/SDCardUI$3;

    const-string v3, "Settings.StorageSlot"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/io/SDCardUI$3;-><init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 258
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/io/SDCardUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/io/SDCardUI$4;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 268
    new-instance v0, Lcom/htc/camera/io/SDCardUI$5;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/io/SDCardUI$5;-><init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/HTCCamera;)V

    .line 291
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 292
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 295
    new-instance v0, Lcom/htc/camera/io/SDCardUI$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/SDCardUI$6;-><init>(Lcom/htc/camera/io/SDCardUI;)V

    .line 307
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 308
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 309
    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 310
    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/htc/camera/io/SDCardUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v1, v1, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/io/SDCardUI$7;

    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/io/SDCardUI$7;-><init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ICameraMenuUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifySDCardPerformanceLow(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->threadAccessCheck()V

    .line 352
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    .line 355
    invoke-virtual {p0}, Lcom/htc/camera/io/SDCardUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v2, "notifySDCardPerformanceLow() - Storage is internal, skip"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 381
    :cond_0
    :goto_0
    return v5

    .line 362
    :cond_1
    iget v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PerformanceLowCount:I

    add-int/lit8 v0, v0, 0x1

    .line 363
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v3, "notifySDCardPerformanceLow() - Current count: "

    iget v4, p0, Lcom/htc/camera/io/SDCardUI;->m_PerformanceLowCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", skip"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0, v0}, Lcom/htc/camera/io/SDCardUI;->setPerformanceLowCount(I)V

    move v5, v1

    .line 368
    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;

    const-string v1, "notifySDCardPerformanceLow()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz p1, :cond_3

    .line 375
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PendingDismissListners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z

    if-nez v0, :cond_0

    .line 379
    const/16 v2, 0x2714

    const-wide/16 v3, 0x3e8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/io/SDCardUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0
.end method
