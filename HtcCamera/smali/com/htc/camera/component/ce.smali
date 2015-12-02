.class Lcom/htc/camera/component/ce;
.super Lcom/htc/camera/component/IntentReceiver;
.source "StorageWatcher.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    .line 25
    const-string v1, "Storage Watcher"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/htc/camera/component/ce;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    .line 51
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 53
    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, v2, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    .line 55
    :goto_1
    if-nez v2, :cond_4

    .line 57
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 61
    :goto_2
    if-nez v1, :cond_3

    .line 63
    iget-object v0, p0, Lcom/htc/camera/component/ce;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mounted path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_3
    return-void

    .line 40
    :cond_0
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageEjectedEvent:Lcom/htc/camera/event/Event;

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ce;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 68
    :cond_3
    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, v1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    return-void
.end method
