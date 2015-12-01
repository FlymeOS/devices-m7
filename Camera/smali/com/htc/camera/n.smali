.class public Lcom/htc/camera/n;
.super Ljava/lang/Object;
.source "CameraStorageLocationSettings.java"


# direct methods
.method public static a(Landroid/content/ContentResolver;)Lcom/htc/camera/io/StorageSlot;
    .locals 2

    .prologue
    .line 28
    :try_start_0
    const-string v0, "htc_app_storage_loc_com.htc.camera"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 29
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    :goto_1
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v0, "CameraStorageLocationSettings"

    const-string v1, "Fail to get HTC_PREFIX_APP_STORAGE_LOCATION status, use available slot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "CameraStorageLocationSettings"

    const-string v1, "readFromDatabase() - No available storage slot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    goto :goto_1
.end method

.method public static a(Landroid/content/ContentResolver;Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "htc_app_storage_loc_com.htc.camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v0, "htc_app_storage_loc_com.htc.camera"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
