.class Lcom/android/server/DeviceManager3LMService$4;
.super Landroid/os/storage/StorageEventListener;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1433
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_2

    .line 1437
    const-string v6, "DeviceManager3LM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStorageStateChanged, path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1440
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, "sdPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1449
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1453
    const-string v6, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1454
    iget-object v6, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mSdLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/DeviceManager3LMService;->access$300(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1455
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v7, v7, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sd_encryption"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_5

    .line 1457
    .local v1, "isSDEncrypted":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 1458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1459
    .local v2, "identityToken":J
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_3

    .line 1460
    const-string v5, "DeviceManager3LM"

    const-string v7, "SDCard Encrypted and Mount"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_3
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/DeviceManager3LMService;->access$200(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v5

    const v7, 0x30700cf

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1463
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v5}, Lcom/android/server/DeviceManager3LMService;->access$400(Lcom/android/server/DeviceManager3LMService;)Landroid/os/storage/StorageManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v7, v7, Lcom/android/server/DeviceManager3LMService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 1464
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    .end local v2    # "identityToken":J
    :cond_4
    monitor-exit v6

    goto/16 :goto_0

    .end local v1    # "isSDEncrypted":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_5
    move v1, v5

    .line 1455
    goto :goto_1
.end method
