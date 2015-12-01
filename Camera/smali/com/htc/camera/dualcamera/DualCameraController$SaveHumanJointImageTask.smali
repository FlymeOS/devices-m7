.class final Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "DualCameraController.java"


# instance fields
.field private final m_AccelerometerValues:[F

.field private final m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private final m_EncodedSecondaryImageData:[B

.field private final m_EncodedSecondaryMaskSize:I

.field private final m_EngineVersion:I

.field private final m_FileCounter:Lcom/htc/camera/io/FileCounter;

.field private final m_InfAccelerometerValues:[F

.field private final m_InfFocusSteps:I

.field private final m_InfSecondaryJpegRawData:[B

.field private final m_JointBitmap:Landroid/graphics/Bitmap;

.field private final m_PrimaryJpegRawData:[B

.field private final m_SecondaryBounds:[Landroid/graphics/Rect;

.field private final m_SecondaryJpegRawData:[B


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;ILandroid/graphics/Bitmap;[B[B[B[BI[Landroid/graphics/Rect;[F[FI)V
    .locals 2

    .prologue
    .line 330
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 331
    iput-object p13, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_AccelerometerValues:[F

    .line 332
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfAccelerometerValues:[F

    .line 333
    iput-object p3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 334
    iput-object p10, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryImageData:[B

    .line 335
    iput p11, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryMaskSize:I

    .line 336
    iput p5, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EngineVersion:I

    .line 337
    iput-object p4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 338
    iput-object p6, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_JointBitmap:Landroid/graphics/Bitmap;

    .line 339
    iput-object p7, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_PrimaryJpegRawData:[B

    .line 340
    iput-object p12, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    .line 341
    iput-object p8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryJpegRawData:[B

    .line 342
    iput-object p9, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfSecondaryJpegRawData:[B

    .line 343
    move/from16 v0, p15

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfFocusSteps:I

    .line 344
    return-void
.end method

.method private encodeJointBitmap()[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_PrimaryJpegRawData:[B

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->extractExif([B)Ljava/util/Hashtable;

    move-result-object v0

    .line 478
    const-string v1, "_htc_human_joint_"

    const-string v3, ""

    invoke-static {v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 484
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_JointBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 486
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 492
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 509
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 508
    throw v0

    .line 495
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 499
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 500
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 508
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 509
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 510
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 504
    return-object v0

    .line 508
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1
.end method

.method private writeExtendedBlock(Ljava/io/FileOutputStream;Ljava/nio/ByteBuffer;I[B)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 548
    if-nez p2, :cond_0

    .line 549
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 550
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 551
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    .line 552
    invoke-virtual {p1, p4}, Ljava/io/FileOutputStream;->write([B)V

    .line 553
    :cond_1
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    if-eqz p4, :cond_3

    array-length v1, p4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 554
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 555
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 556
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 557
    if-eqz p4, :cond_2

    array-length v2, p4

    :cond_2
    add-int/lit8 v0, v2, 0x8

    return v0

    :cond_3
    move v1, v2

    .line 553
    goto :goto_0
.end method

.method private writeExtendedBlocks(Ljava/io/FileOutputStream;)I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 517
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 521
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfSecondaryJpegRawData:[B

    invoke-direct {p0, p1, v1, v7, v0}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->writeExtendedBlock(Ljava/io/FileOutputStream;Ljava/nio/ByteBuffer;I[B)I

    move-result v3

    .line 524
    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfFocusSteps:I

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 525
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p1, v1, v8, v0}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->writeExtendedBlock(Ljava/io/FileOutputStream;Ljava/nio/ByteBuffer;I[B)I

    move-result v0

    add-int/2addr v0, v3

    .line 528
    const/16 v3, 0xc

    new-array v3, v3, [B

    .line 529
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 530
    new-array v5, v10, [I

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfAccelerometerValues:[F

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v7

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfAccelerometerValues:[F

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v8

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_InfAccelerometerValues:[F

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v9

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 535
    invoke-direct {p0, p1, v1, v9, v3}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->writeExtendedBlock(Ljava/io/FileOutputStream;Ljava/nio/ByteBuffer;I[B)I

    move-result v3

    add-int/2addr v3, v0

    .line 538
    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 539
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 540
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 543
    add-int/lit8 v0, v3, 0xc

    return v0

    .line 540
    nop

    :array_0
    .array-data 1
        0x68t
        0x74t
        0x63t
        0x49t
        0x45t
        0x58t
        0x54t
        0x44t
    .end array-data
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 5

    .prologue
    .line 349
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static {v1, v2, v3}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v2, Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    const/4 v3, 0x0

    .line 389
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :try_start_1
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->encodeJointBitmap()[B

    move-result-object v4

    .line 391
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 394
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_PrimaryJpegRawData:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 399
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryImageData:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 402
    invoke-direct {p0, v2}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->writeExtendedBlocks(Ljava/io/FileOutputStream;)I

    .line 405
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    array-length v3, v3

    .line 406
    :goto_0
    mul-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x4

    .line 407
    const/4 v6, 0x4

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 408
    new-array v6, v5, [B

    .line 409
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    .line 410
    array-length v4, v4

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 411
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_PrimaryJpegRawData:[B

    array-length v4, v4

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 414
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->TAG:Ljava/lang/String;

    const-string v8, "onSaveMediaToFile() - Secondary image data length : "

    iget-object v9, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryImageData:[B

    array-length v9, v9

    iget v10, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryMaskSize:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryImageData:[B

    array-length v4, v4

    iget v8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryMaskSize:I

    sub-int/2addr v4, v8

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 422
    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EncodedSecondaryMaskSize:I

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 423
    if-lez v3, :cond_1

    move v3, v1

    .line 425
    :goto_1
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 427
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 428
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 429
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 430
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_SecondaryBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 405
    goto :goto_0

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_AccelerometerValues:[F

    if-eqz v3, :cond_2

    .line 435
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_AccelerometerValues:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    aput v8, v3, v4

    const/4 v4, 0x1

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_AccelerometerValues:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    aput v8, v3, v4

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_AccelerometerValues:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    aput v8, v3, v4

    const/4 v4, 0x3

    const/4 v8, 0x0

    aput v8, v3, v4

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 454
    :goto_2
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v8, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->m_EngineVersion:I

    aput v8, v3, v4

    const/4 v4, 0x1

    const/4 v8, 0x0

    aput v8, v3, v4

    const/4 v4, 0x2

    const/4 v8, 0x0

    aput v8, v3, v4

    const/4 v4, 0x3

    const/4 v8, 0x0

    aput v8, v3, v4

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 455
    add-int/lit8 v3, v5, 0x4

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 456
    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 464
    :goto_3
    return v0

    .line 453
    :cond_2
    const/4 v3, 0x4

    :try_start_2
    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 461
    :catch_0
    move-exception v0

    .line 463
    :goto_4
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onSaveMediaToFile() - Fail to save image"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 468
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 464
    goto :goto_3

    .line 468
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 461
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 407
    :array_0
    .array-data 1
        0x68t
        0x74t
        0x63t
        0x49t
    .end array-data

    .line 453
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
