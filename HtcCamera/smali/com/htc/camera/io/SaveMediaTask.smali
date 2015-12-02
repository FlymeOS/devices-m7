.class public abstract Lcom/htc/camera/io/SaveMediaTask;
.super Ljava/lang/Object;
.source "SaveMediaTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final cameraActivity:Lcom/htc/camera/HTCCamera;

.field public final cameraThread:Lcom/htc/camera/CameraThread;

.field public volatile captureHandle:Lcom/htc/camera/CaptureHandle;

.field public volatile dcfInfo:Lcom/htc/camera/io/DCFInfo;

.field public volatile fileFormat:Lcom/htc/camera/io/FileFormat;

.field public volatile gpsLocation:Landroid/location/Location;

.field public volatile isGeoTaggingEnabled:Z

.field public volatile isLastMedia:Z

.field public volatile isSaveFailed:Z

.field public volatile isSingleShot:Z

.field public volatile isTempMedia:Z

.field private m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

.field private final m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

.field private volatile m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

.field private volatile m_ThumbnailImagePool:Lcom/htc/camera/media/a;

.field public volatile orientation:Ljava/lang/Integer;

.field public volatile prepareThumbnailImage:Z

.field public volatile preventFileNameConflict:Z

.field public volatile storageSlot:Lcom/htc/camera/io/StorageSlot;

.field public volatile takenDateTime:J


# direct methods
.method protected constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveMediaTask;->isLastMedia:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 35
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveMediaTask;->isSingleShot:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/camera/io/SaveMediaTask;->isTempMedia:Z

    .line 38
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveMediaTask;->prepareThumbnailImage:Z

    .line 39
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveMediaTask;->preventFileNameConflict:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraThread:Lcom/htc/camera/CameraThread;

    .line 58
    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 59
    instance-of v0, p0, Lcom/htc/camera/io/SaveImageTask;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/camera/media/ImageMediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/ImageMediaInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 60
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    goto :goto_0
.end method

.method private backupConflictFile(Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/camera/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, v5, :cond_0

    .line 74
    iget-object v1, p1, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    new-instance v0, Lcom/htc/camera/io/Path;

    invoke-direct {v0, v5}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    .line 82
    :cond_0
    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "backupConflictFile() - Cannot find available backup file path"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_1
    return-void

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupConflictFile() - Backup file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "backupConflictFile() - Fail to backup file"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/io/SaveMediaTask;->onConflictFileBackuped(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)V

    goto :goto_1
.end method

.method private updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 425
    if-eqz p2, :cond_0

    .line 426
    :try_start_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 430
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method final createThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;->onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    .line 111
    iput-object p1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnailImageBeforeSavingMedia() - Handle : "

    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnailImageBeforeSavingMedia() - No IThumbnailImagePool interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getAvailableFileName()Lcom/htc/camera/io/Path;
.end method

.method public final getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    return-object v0
.end method

.method protected getTempFileName()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertIntoMediaStore()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 145
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "insertIntoMediaStore() - Start"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    if-eqz v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "insertIntoMediaStore() - No need to insert"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V

    .line 181
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {p0, v2}, Lcom/htc/camera/io/SaveMediaTask;->onInsertIntoMediaStore(Lcom/htc/camera/media/MediaInfo;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    if-nez v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "insertIntoMediaStore() - No content URI"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v3}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iput-object v2, v3, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 168
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-wide v3, p0, Lcom/htc/camera/io/SaveMediaTask;->takenDateTime:J

    iput-wide v3, v2, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    .line 171
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {p0, v2, v3}, Lcom/htc/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V

    .line 174
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "insertIntoMediaStore() - End"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "insertIntoMediaStore() - Content URI : "

    invoke-static {v3, v4, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v1

    .line 179
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "insertIntoMediaStore() - Exception occurred while inserting data into media store"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/io/SaveMediaTask;->onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V

    goto :goto_0
.end method

.method protected onConflictFileBackuped(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onInsertIntoMediaStore(Lcom/htc/camera/media/MediaInfo;)Landroid/net/Uri;
.end method

.method protected onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaSaveFailed() - Delete broken file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lcom/htc/camera/io/FileUtility;->deleteFile(Lcom/htc/camera/io/Path;)Z

    .line 220
    :cond_0
    return-void
.end method

.method protected onMediaSaved(Lcom/htc/camera/io/Path;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method protected onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method protected onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public final prepareSavingMedia()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "prepareSavingMedia() - No camera activity"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    .line 263
    iput-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 264
    invoke-virtual {p0, v8, v8}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v0, v1

    .line 265
    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v3, :cond_2

    .line 269
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "prepareSavingMedia() - Storage not ready"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    .line 271
    iput-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 272
    invoke-virtual {p0, v8, v8}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v0, v1

    .line 273
    goto :goto_0

    .line 280
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/io/SaveMediaTask;->isTempMedia:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveMediaTask;->getTempFileName()Lcom/htc/camera/io/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    :goto_1
    if-nez v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "prepareSavingMedia() - Cannot get available file path"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    .line 298
    iput-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 299
    invoke-virtual {p0, v8, v8}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v0, v1

    .line 300
    goto :goto_0

    .line 283
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveMediaTask;->getAvailableFileName()Lcom/htc/camera/io/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 288
    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "prepareSavingMedia() - Cannot get available file path"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    .line 290
    iput-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 291
    invoke-virtual {p0, v8, v8}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v0, v1

    .line 292
    goto :goto_0

    .line 302
    :cond_4
    iget-object v3, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    .line 303
    iget-object v4, v0, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 304
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iput-object v0, v5, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 305
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v6, p0, Lcom/htc/camera/io/SaveMediaTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iput-object v6, v5, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 306
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-wide v6, p0, Lcom/htc/camera/io/SaveMediaTask;->takenDateTime:J

    iput-wide v6, v5, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    .line 307
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareSavingMedia() - Directory name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", file name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-boolean v3, p0, Lcom/htc/camera/io/SaveMediaTask;->preventFileNameConflict:Z

    if-eqz v3, :cond_5

    .line 314
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareSavingMedia() - File \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is existent, backup this file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v0}, Lcom/htc/camera/io/SaveMediaTask;->backupConflictFile(Lcom/htc/camera/io/Path;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 328
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SaveMediaTask;->onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 330
    iget-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v4, "prepareSavingMedia() - Fail to prepare saving media to file"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    .line 332
    iput-boolean v2, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 333
    invoke-virtual {p0, v0, v8}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v0, v1

    .line 334
    goto/16 :goto_0

    .line 321
    :catch_1
    move-exception v3

    .line 323
    iget-object v4, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "prepareSavingMedia() - Fail to check or backup conflict file"

    invoke-static {v4, v5, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 338
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_PrepareSavingMediaToFileResult:Ljava/lang/Boolean;

    move v0, v2

    .line 339
    goto/16 :goto_0
.end method

.method public saveMedia()Z
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 347
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveMediaTask;->prepareSavingMedia()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Fail to prepare saving media to file"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 414
    :goto_0
    return v1

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v2, v1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 359
    iget-object v9, v2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "saveMedia() - onSaveMediaToFile() - Start"

    invoke-static {v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/htc/camera/io/SaveMediaTask;->onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "saveMedia() - Fail to save media to file"

    invoke-static {v1, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v1, v3

    .line 366
    goto :goto_0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "saveMedia() - onSaveMediaToFile() - End"

    invoke-static {v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "saveMedia() - Create thumbnail image, handle : "

    iget-object v6, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    invoke-static {v1, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    .line 384
    :goto_1
    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 385
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    iget-object v7, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImageHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v7, v2, v5, v6}, Lcom/htc/camera/media/a;->createThumbnailImage(Lcom/htc/camera/Handle;Lcom/htc/camera/io/Path;J)V

    .line 387
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    .line 390
    instance-of v1, v2, Lcom/htc/camera/io/DCFPath;

    if-eqz v1, :cond_4

    .line 392
    move-object v0, v2

    check-cast v0, Lcom/htc/camera/io/DCFPath;

    move-object v1, v0

    .line 393
    iget-object v5, v1, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    if-eqz v5, :cond_3

    .line 394
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v6, p0, Lcom/htc/camera/io/SaveMediaTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v6, v6, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget-object v7, v1, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    iget v7, v7, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/camera/io/SaveMediaTask;->updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 395
    :cond_3
    iget-object v5, v1, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    if-eqz v5, :cond_4

    .line 396
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v6, p0, Lcom/htc/camera/io/SaveMediaTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v6, v6, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    iget v1, v1, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v5, v6, v1}, Lcom/htc/camera/io/SaveMediaTask;->updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 400
    :cond_4
    const/4 v1, 0x1

    invoke-static {v9, v1}, Lcom/htc/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    .line 403
    invoke-virtual {p0, v2}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaved(Lcom/htc/camera/io/Path;)V

    .line 406
    iget-object v1, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - End"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 407
    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 382
    iget-object v5, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v6, "saveMedia() - Fail to get file time"

    invoke-static {v5, v6, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v5, v7

    goto :goto_1

    .line 409
    :catch_1
    move-exception v1

    .line 411
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v5, "saveMedia() - Exception occurred while saving media"

    invoke-static {v2, v5, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    iput-boolean v4, p0, Lcom/htc/camera/io/SaveMediaTask;->isSaveFailed:Z

    .line 413
    iget-object v2, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/io/SaveMediaTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v1, v3

    .line 414
    goto/16 :goto_0
.end method

.method public final setFilePathToMediaInfo(Lcom/htc/camera/io/Path;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/io/SaveMediaTask;->m_SavedMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iput-object p1, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 137
    return-void
.end method
