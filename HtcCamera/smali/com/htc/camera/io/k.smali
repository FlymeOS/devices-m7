.class Lcom/htc/camera/io/k;
.super Lcom/htc/camera/io/StorageSlot;
.source "StorageCardSlot.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/camera/io/k;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/mediamanager/MediaManagerStore$Images;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/lib1/mediamanager/MediaManagerStore$Video;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 34
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "StorageCardSlot"

    const-string v2, "getDirectoryPath exception:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSerial()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 58
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mmc_host/mmc1"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 66
    if-nez v3, :cond_0

    .line 68
    iget-object v1, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v2, "getSerial() - Cannot find storage files, skip"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-object v0

    .line 74
    :cond_0
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v1, v3, v2

    .line 76
    const-string v5, "mmc1:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    :goto_2
    if-nez v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v2, "getSerial() - Cannot find mmc folder, skip"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 120
    iget-object v2, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v3, "getSerial() - Failed to get SD card serial"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 91
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/mmc_host/mmc1/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/serial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v4, "getSerial() - Serial: "

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 105
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v4, "getSerial() - Error when reading serial file"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    :try_start_6
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_4
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v2, "getSerial() - Serial file not exist"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/io/k;->TAG:Ljava/lang/String;

    const-string v2, "getSerial() - SD card info path not exist"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 109
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 103
    :catch_2
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public getState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/camera/io/k;->directoryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "unknown"

    .line 142
    :goto_0
    return-object v0

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "StorageCardSlot"

    const-string v2, "getState exception:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public isInternalMemory()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/htc/camera/io/k;->directoryPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 175
    const-string v2, "StorageCardSlot"

    const-string v3, "isSupported exception:"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "sdcard"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "Storage Card"

    return-object v0
.end method
