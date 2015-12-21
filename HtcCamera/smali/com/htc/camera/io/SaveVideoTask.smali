.class public Lcom/htc/camera/io/SaveVideoTask;
.super Lcom/htc/camera/io/SaveMediaTask;
.source "SaveVideoTask.java"


# instance fields
.field public volatile duration:J

.field public volatile existentContentUri:Landroid/net/Uri;

.field public volatile filePath:Lcom/htc/camera/io/Path;

.field public volatile isSlowMotion:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 32
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveVideoTask;->preventFileNameConflict:Z

    .line 33
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveVideoTask;->isSingleShot:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    return-object v0
.end method

.method protected onInsertIntoMediaStore(Lcom/htc/camera/media/MediaInfo;)Landroid/net/Uri;
    .locals 13

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v11, 0x3e8

    .line 52
    iget-wide v2, p0, Lcom/htc/camera/io/SaveVideoTask;->takenDateTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 57
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v3}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 65
    :goto_0
    iput-wide v0, p0, Lcom/htc/camera/io/SaveVideoTask;->takenDateTime:J

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    const-string v1, "onInsertIntoMediaStore() - Update "

    iget-object v2, p0, Lcom/htc/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    iget-object v3, p0, Lcom/htc/camera/io/SaveVideoTask;->gpsLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/htc/camera/io/SaveVideoTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-wide v5, p0, Lcom/htc/camera/io/SaveVideoTask;->takenDateTime:J

    iget-wide v7, p0, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    div-long/2addr v7, v11

    mul-long/2addr v7, v11

    iget-object v9, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0, v9}, Lcom/htc/camera/io/SaveVideoTask;->prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/htc/camera/MediaProvider;->updateVideo(Landroid/content/Context;Landroid/net/Uri;Lcom/htc/camera/io/Path;Landroid/location/Location;Lcom/htc/camera/io/FileFormat;JJLandroid/content/ContentValues;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    .line 106
    :goto_1
    return-object v0

    .line 60
    :catch_0
    move-exception v2

    .line 62
    iget-object v3, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    const-string v4, "onInsertIntoMediaStore() - Cannot get video file modified time"

    invoke-static {v3, v4, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    const-string v1, "onInsertIntoMediaStore() - Fail to update media store"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SaveVideoTask;->prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/htc/camera/io/SaveVideoTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/io/SaveVideoTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, v1, Lcom/htc/camera/CaptureHandle;->cameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    if-nez v0, :cond_3

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    :cond_3
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    :goto_2
    int-to-long v1, v1

    const-wide/16 v3, 0x2000

    or-long/2addr v1, v3

    long-to-int v1, v1

    .line 100
    const-string v2, "htc_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget-object v2, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInsertIntoMediaStore htcType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 103
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInsertIntoMediaStore preparedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/io/SaveVideoTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    iget-object v2, v2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    iget-object v3, v3, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/io/SaveVideoTask;->gpsLocation:Landroid/location/Location;

    iget-object v5, p0, Lcom/htc/camera/io/SaveVideoTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-wide v6, p0, Lcom/htc/camera/io/SaveVideoTask;->takenDateTime:J

    iget-wide v8, p0, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    div-long/2addr v8, v11

    mul-long/2addr v8, v11

    invoke-static/range {v0 .. v10}, Lcom/htc/camera/MediaProvider;->insertVideo(Landroid/content/Context;Lcom/htc/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/htc/camera/io/FileFormat;JJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 98
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    move-object v10, v0

    goto :goto_3
.end method

.method protected onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;->onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveVideoTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    .line 160
    iget-wide v1, p0, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/camera/io/SaveVideoTask;->isSlowMotion:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/camera/io/SaveVideoTask;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaStoreValues() - Set slow motion type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string v1, "htc_type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;->prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method
