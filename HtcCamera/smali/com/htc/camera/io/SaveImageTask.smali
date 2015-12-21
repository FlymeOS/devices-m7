.class public Lcom/htc/camera/io/SaveImageTask;
.super Lcom/htc/camera/io/SaveMediaTask;
.source "SaveImageTask.java"


# static fields
.field private static m_TotalJpegRawDataSize:J


# instance fields
.field public volatile bitmap:Landroid/graphics/Bitmap;

.field public volatile imageHeight:Ljava/lang/Integer;

.field public volatile imageWidth:Ljava/lang/Integer;

.field public volatile isDualLens:Ljava/lang/Boolean;

.field private m_BackupFilePath:Lcom/htc/camera/io/Path;

.field private m_JpegRawData:[B

.field private m_JpegRawDataSize:I

.field private m_NativeJpegRawData:J

.field private sinaCamera_isYuvData:Z

.field private sinaCamera_preview_angle:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 47
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    .line 48
    iput v0, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 65
    invoke-virtual {p0, p3}, Lcom/htc/camera/io/SaveImageTask;->setJpegRawData([B)Z

    .line 66
    iput-object p2, p0, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BIIIZ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 71
    if-eqz p7, :cond_0

    .line 72
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    .line 73
    :cond_0
    iput-boolean v0, p0, Lcom/htc/camera/io/SaveImageTask;->isTempMedia:Z

    .line 74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    .line 75
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    .line 76
    iput p6, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;[B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/htc/camera/io/SaveImageTask;->setJpegRawData([B)Z

    .line 61
    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    if-ltz v0, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    :cond_1
    return-object p2
.end method

.method public static declared-synchronized getTotalJpegRawDataSize()J
    .locals 3

    .prologue
    .line 226
    const-class v0, Lcom/htc/camera/io/SaveImageTask;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/htc/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized updateTotalJpegRawDataSize(J)J
    .locals 4

    .prologue
    .line 594
    const-class v1, Lcom/htc/camera/io/SaveImageTask;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/htc/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    add-long/2addr v2, p0

    sput-wide v2, Lcom/htc/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J

    .line 595
    sget-wide v2, Lcom/htc/camera/io/SaveImageTask;->m_TotalJpegRawDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final clearJpegRawData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 113
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v0, :cond_1

    .line 115
    iget v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/htc/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 118
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-wide v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v0, v1}, Lcom/htc/camera/io/NativeBuffer;->remove(J)V

    .line 110
    iput-wide v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void
.end method

.method protected getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "getAvailableFileName() - No camera activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 176
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 146
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v2, p0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "getAvailableFileName() - Cannot get directory or file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 156
    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    new-instance v3, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    invoke-static {v2, v3}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    new-instance v3, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-static {v1, v3, v0}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v1, Lcom/htc/camera/io/DCFPath;

    new-instance v6, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    new-instance v4, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-object v0, v0, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/htc/camera/io/SaveImageTask;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v0, v1, Lcom/htc/camera/io/DCFPath;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/htc/camera/io/DCFPath;

    iget-object v3, v1, Lcom/htc/camera/io/DCFPath;->directoryPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    iget-object v1, v1, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    .line 175
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/io/DCFPath;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/io/DCFPath;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final getJpegRawData(Z)[B
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJpegRawData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - native buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 207
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    if-lez v1, :cond_1

    .line 209
    iget v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/htc/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 214
    :cond_1
    return-object v0

    .line 196
    :cond_2
    iget-wide v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_4

    .line 198
    iget-wide v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/io/NativeBuffer;->get(JZ)[B

    move-result-object v0

    .line 199
    if-eqz p1, :cond_3

    .line 200
    iput-wide v5, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    .line 201
    :cond_3
    if-nez v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final hasJpegRawData()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawData:[B

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :cond_2
    iget-wide v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onConflictFileBackuped(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)V
    .locals 0

    .prologue
    .line 245
    iput-object p2, p0, Lcom/htc/camera/io/SaveImageTask;->m_BackupFilePath:Lcom/htc/camera/io/Path;

    .line 246
    return-void
.end method

.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/htc/camera/media/a;->createThumbnailImage([BI)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInsertIntoMediaStore(Lcom/htc/camera/media/MediaInfo;)Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 270
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - No camera activity"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v3, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 278
    if-nez v3, :cond_1

    .line 280
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - No file path"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_BackupFilePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInsertIntoMediaStore() - Update media store for backup file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_BackupFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_BackupFilePath:Lcom/htc/camera/io/Path;

    invoke-static {v0, v3, v1}, Lcom/htc/camera/MediaProvider;->updateImageFilePath(Landroid/content/Context;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)Z

    .line 292
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/camera/io/SaveImageTask;->prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    if-nez v0, :cond_3

    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 298
    :cond_3
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 299
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 302
    :goto_1
    or-int/lit8 v1, v1, 0x20

    .line 303
    const-string v2, "htc_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, v1, Lcom/htc/camera/CaptureHandle;->cameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    if-nez v0, :cond_5

    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 310
    :cond_5
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 311
    const-string v1, "htc_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 314
    :goto_2
    int-to-long v1, v1

    const-wide/16 v4, 0x2000

    or-long/2addr v1, v4

    long-to-int v1, v1

    .line 315
    const-string v2, "htc_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    move-object v9, v0

    .line 319
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, v3, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v3, v3, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    new-instance v4, Lcom/htc/camera/imaging/Size;

    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_3
    iget-object v6, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_4
    invoke-direct {v4, v5, v6}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    iget-wide v6, p0, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    iget-object v10, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    if-eqz v10, :cond_7

    iget-object v8, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_7
    iget-object v10, p0, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v10}, Lcom/htc/camera/MediaProvider;->insertImage(Landroid/content/Context;Lcom/htc/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/imaging/Size;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/htc/camera/io/FileFormat;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v1, v8

    .line 301
    goto :goto_1

    :cond_9
    move v1, v8

    .line 313
    goto :goto_2

    :cond_a
    move v5, v8

    .line 319
    goto :goto_3

    :cond_b
    move v6, v8

    goto :goto_4
.end method

.method protected onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveMediaTask;->onPrepareSavingMediaToFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return v1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 345
    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 347
    invoke-virtual {p0, v1}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v3

    .line 348
    if-eqz v3, :cond_2

    .line 352
    :try_start_0
    new-instance v5, Lcom/htc/camera/imaging/ExifTagEnumerator;

    invoke-direct {v5, v3}, Lcom/htc/camera/imaging/ExifTagEnumerator;-><init>([B)V

    .line 353
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->read()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 355
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentIfd()Lcom/htc/camera/imaging/Ifd;

    move-result-object v0

    sget-object v6, Lcom/htc/camera/imaging/Ifd;->Ifd0:Lcom/htc/camera/imaging/Ifd;

    if-ne v0, v6, :cond_d

    .line 357
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentTagId()I

    move-result v0

    .line 358
    const/16 v6, 0x100

    if-ne v0, v6, :cond_9

    .line 360
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataInteger()[I

    move-result-object v0

    .line 363
    if-eqz v0, :cond_8

    const/4 v6, 0x0

    aget v0, v0, v6

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    .line 364
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v6, "onPrepareSavingMediaToFile() - Image width is "

    iget-object v7, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-static {v0, v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 444
    iget-object v4, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareSavingMediaToFile() - Fail to get orientation from JPEG image"

    invoke-static {v4, v5, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v3

    .line 450
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    if-nez v3, :cond_6

    .line 452
    :cond_4
    if-nez v0, :cond_5

    .line 453
    invoke-virtual {p0, v1}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 454
    :cond_5
    if-eqz v0, :cond_6

    .line 458
    :try_start_1
    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_14

    .line 461
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    .line 462
    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    .line 463
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareSavingMediaToFile() - Image size is "

    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    const-string v4, " x "

    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-static {v0, v1, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    .line 478
    instance-of v1, v0, Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 479
    check-cast v0, Lcom/htc/camera/media/ImageMediaInfo;

    new-instance v1, Lcom/htc/camera/imaging/Size;

    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v1, v0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    :cond_7
    move v1, v2

    .line 482
    goto/16 :goto_0

    :cond_8
    move v0, v4

    .line 363
    goto :goto_2

    .line 367
    :cond_9
    const/16 v6, 0x101

    if-ne v0, v6, :cond_b

    .line 369
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 371
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataInteger()[I

    move-result-object v0

    .line 372
    if-eqz v0, :cond_a

    const/4 v6, 0x0

    aget v0, v0, v6

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    .line 373
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v6, "onPrepareSavingMediaToFile() - Image height is "

    iget-object v7, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-static {v0, v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    move v0, v4

    .line 372
    goto :goto_5

    .line 376
    :cond_b
    const/16 v6, 0x112

    if-ne v0, v6, :cond_1

    .line 378
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagDataInteger()[I

    move-result-object v0

    .line 379
    if-eqz v0, :cond_c

    const/4 v6, 0x0

    aget v0, v0, v6

    .line 380
    :goto_6
    packed-switch v0, :pswitch_data_0

    .line 395
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    .line 398
    :goto_7
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v6, "onPrepareSavingMediaToFile() - Image orientation = "

    iget-object v7, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    invoke-static {v0, v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    move v0, v4

    .line 379
    goto :goto_6

    .line 384
    :pswitch_0
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    goto :goto_7

    .line 388
    :pswitch_1
    const/16 v0, 0x10e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    goto :goto_7

    .line 392
    :pswitch_2
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    goto :goto_7

    .line 401
    :cond_d
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentIfd()Lcom/htc/camera/imaging/Ifd;

    move-result-object v0

    sget-object v6, Lcom/htc/camera/imaging/Ifd;->Exif:Lcom/htc/camera/imaging/Ifd;

    if-ne v0, v6, :cond_1

    .line 404
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    :cond_e
    :goto_8
    move-object v0, v3

    .line 445
    goto/16 :goto_3

    .line 408
    :cond_f
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->currentTagId()I

    move-result v0

    .line 409
    const v6, 0x927c

    if-ne v0, v6, :cond_1

    .line 411
    invoke-virtual {v5}, Lcom/htc/camera/imaging/ExifTagEnumerator;->getTagData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/imaging/HtcMakerNote;->deserialize([B)Lcom/htc/camera/imaging/HtcMakerNote;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_13

    .line 415
    iget-object v0, v0, Lcom/htc/camera/imaging/HtcMakerNote;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;

    .line 417
    iget v5, v0, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->tag:I

    if-ne v5, v2, :cond_10

    .line 419
    invoke-virtual {v0}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->getDataInteger()[I

    move-result-object v0

    .line 420
    if-eqz v0, :cond_15

    array-length v4, v0

    if-lez v4, :cond_15

    .line 422
    const/4 v4, 0x0

    aget v0, v0, v4

    .line 423
    iget-object v4, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareSavingMediaToFile() - Dual-lens flag in EXIF = "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    if-eqz v0, :cond_11

    const/16 v4, 0x66

    if-lt v0, v4, :cond_12

    const/16 v4, 0x12b

    if-gt v0, v4, :cond_12

    :cond_11
    move v0, v2

    .line 429
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    .line 430
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onPrepareSavingMediaToFile() - Dual-lens photo = "

    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_12
    move v0, v1

    .line 424
    goto :goto_9

    .line 434
    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->isDualLens:Ljava/lang/Boolean;

    .line 435
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onPrepareSavingMediaToFile() - No maker notes in this photo"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 466
    :cond_14
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareSavingMediaToFile() - Fail to get image size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 468
    :catch_1
    move-exception v0

    .line 470
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "onPrepareSavingMediaToFile() - Fail to get image size"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_15
    move v0, v1

    goto :goto_9

    .line 380
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    const/4 v4, 0x0

    .line 495
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveImageTask;->hasJpegRawData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-boolean v0, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_isYuvData:Z

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v4

    .line 503
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 504
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 505
    iget v6, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v0, v6, v7}, Lcom/htc/camera/imaging/ImageUtility;->yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 506
    iget-object v4, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v0, v4

    div-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    .line 509
    iget v0, p0, Lcom/htc/camera/io/SaveImageTask;->sinaCamera_preview_angle:I

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    move v4, v2

    .line 521
    :goto_0
    iget-object v5, p0, Lcom/htc/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-static {v5, v4, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 523
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 524
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :goto_1
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 545
    :goto_2
    return v0

    .line 512
    :sswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    .line 513
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 514
    goto :goto_0

    .line 517
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    .line 518
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 528
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 529
    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 541
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 543
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred while saving image to file"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 549
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v2

    .line 545
    goto :goto_2

    .line 532
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get JPEG raw data from native buffer"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 549
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 535
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No image to save"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 541
    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_3

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public final setJpegRawData([B)Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 558
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useNativeJpegRawDataBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    iput-object p1, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawData:[B

    .line 561
    if-eqz p1, :cond_0

    array-length v0, p1

    :cond_0
    iput v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    .line 585
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/htc/camera/io/SaveImageTask;->updateTotalJpegRawDataSize(J)J

    .line 586
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 566
    :cond_2
    iget-wide v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {p0}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 570
    :cond_3
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 572
    invoke-static {p1}, Lcom/htc/camera/io/NativeBuffer;->add([B)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    .line 573
    iget-wide v1, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 575
    iget-object v1, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot save JPEG raw data to native buffer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/io/SaveImageTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRawData() - native buffer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/camera/io/SaveImageTask;->m_NativeJpegRawData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    array-length v0, p1

    iput v0, p0, Lcom/htc/camera/io/SaveImageTask;->m_JpegRawDataSize:I

    goto :goto_0
.end method
