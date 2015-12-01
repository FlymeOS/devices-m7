.class public Lcom/htc/camera/io/SaveBitmapImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "SaveBitmapImageTask.java"


# instance fields
.field protected m_Bitmap:Landroid/graphics/Bitmap;

.field protected m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field protected m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_FileCounter:Lcom/htc/camera/io/FileCounter;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Hashtable;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraThread;",
            "Lcom/htc/camera/CaptureHandle;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/camera/io/FileCounter;",
            "Lcom/htc/camera/io/FileCounter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 40
    iput-object p5, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 41
    iput-object p6, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 42
    iput-object p3, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object p4, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_ExifTags:Ljava/util/Hashtable;

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/htc/camera/media/a;->createThumbnailImage(Landroid/graphics/Bitmap;I)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveImageTask;->onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v2, "onSaveMediaToFile() - Encode bitmap"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->cameraType:Lcom/htc/camera/CameraType;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->id:I

    .line 66
    :goto_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 70
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v5, "onSaveMediaToFile() - Encode bitmap in service mode"

    invoke-static {v2, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 77
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    iget-object v5, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v3, "onSaveMediaToFile() - Fail to encode bitmap to byte array"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 93
    :try_start_4
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 112
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 135
    :goto_1
    return v0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->cameraType:Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->id:I

    goto :goto_0

    .line 83
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/camera/CameraThread;->setJpegData([B)V

    .line 84
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 93
    :try_start_6
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    :cond_3
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v1, "onSaveMediaToFile() - Update EXIF"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_ExifTags:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 121
    :try_start_7
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v2, "onSaveMediaToFile() - Fail to update EXIF"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_4
    :goto_3
    iput-object v3, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 135
    const/4 v0, 0x1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 88
    :goto_4
    :try_start_8
    iget-object v3, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v5, "onSaveMediaToFile() - Cannot write to output stream"

    invoke-static {v3, v5, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 93
    :try_start_9
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 112
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 89
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    :try_start_a
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 105
    :catch_2
    move-exception v0

    move-object v3, v4

    .line 107
    :goto_6
    :try_start_b
    iget-object v2, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onSaveMediaToFile() - Cannot open output file"

    invoke-static {v2, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 112
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 108
    goto/16 :goto_1

    .line 98
    :cond_5
    :try_start_c
    iget-object v2, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->m_Bitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v0, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/htc/camera/io/SaveBitmapImageTask;->TAG:Ljava/lang/String;

    const-string v2, "onSaveMediaToFile() - Fail to encode bitmap"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 112
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 101
    goto/16 :goto_1

    .line 112
    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_7
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 124
    :cond_6
    :try_start_d
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_3

    .line 112
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 105
    :catch_3
    move-exception v0

    goto :goto_6

    .line 93
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 86
    :catch_4
    move-exception v0

    goto :goto_4
.end method
