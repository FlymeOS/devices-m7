.class public Lcom/htc/lib1/media/zoe/HtcZoeExtractor;
.super Ljava/lang/Object;
.source "HtcZoeExtractor.java"


# instance fields
.field private mHtcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lib1/media/zoe/HtcData;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcDataSize:J

.field private mHtcMetadataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mHtcTableOffset:J

.field private mHtcTableSize:J

.field private mHtcTableVersion:I

.field private mInitCheck:Z

.field private mLock:Ljava/lang/Object;

.field private mPFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mInitCheck:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    .line 29
    iput-wide v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableOffset:J

    .line 30
    iput-wide v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableSize:J

    .line 31
    iput v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableVersion:I

    .line 32
    iput-wide v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    .line 40
    const-string v0, "HtcZoeExtractor"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private static FOURCC(CCCC)I
    .locals 2

    .prologue
    .line 819
    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p0, v0, v1

    const/4 v1, 0x1

    aput-char p1, v0, v1

    const/4 v1, 0x2

    aput-char p2, v0, v1

    const/4 v1, 0x3

    aput-char p3, v0, v1

    .line 821
    invoke-static {v0}, Lcom/htc/lib1/media/zoe/a;->a([C)I

    move-result v0

    .line 830
    return v0
.end method

.method private static MakeFourCCString(I[C)V
    .locals 2

    .prologue
    .line 899
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 906
    :goto_0
    return-void

    .line 902
    :cond_0
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-char v1, v1

    aput-char v1, p1, v0

    .line 903
    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v0

    .line 904
    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v0

    .line 905
    const/4 v0, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v0

    goto :goto_0
.end method

.method private checkHtcData(Ljava/nio/channels/FileChannel;Ljava/lang/String;JI)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 795
    invoke-static {p1, p3, p4, v5}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v1

    .line 797
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 798
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const-string v1, "HtcZoeExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag check header tag failed expect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return v0

    .line 803
    :cond_0
    int-to-long v1, p5

    add-long/2addr v1, p3

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    invoke-static {p1, v1, v2, v5}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v1

    .line 804
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 805
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const-string v1, "HtcZoeExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag check footer tag failed expect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_1
    const-string v0, "HtcZoeExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private extractHtcData(Ljava/lang/String;)Lcom/htc/lib1/media/zoe/b;
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/media/zoe/HtcData;

    .line 414
    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    monitor-exit v1

    .line 417
    :goto_0
    return-object v0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/htc/lib1/media/zoe/HtcData;->validateDataCounts()V

    .line 417
    monitor-exit v1

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized extractHtcMetadata(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "key format is invalid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized genInputStream(Ljava/lang/String;JI)Ljava/io/InputStream;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 422
    monitor-enter p0

    :try_start_0
    const-string v1, "HtcZoeExtractor"

    const-string v3, "genInputStream"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v5, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    :try_start_1
    const-string v1, "HtcZoeExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x1

    .line 429
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 431
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v3

    .line 437
    :goto_0
    if-nez v4, :cond_2

    .line 438
    const-string v1, "HtcZoeExtractor"

    const-string v2, "fileinputstream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :goto_1
    monitor-exit p0

    return-object v0

    .line 434
    :cond_0
    :try_start_2
    const-string v3, "HtcZoeExtractor"

    const-string v4, "fd is null or invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v4, v0

    goto :goto_0

    .line 446
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 447
    const/4 v6, 0x4

    invoke-static {v3, p2, p3, v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v6

    .line 448
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 450
    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 451
    const-string v1, "HtcZoeExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check tag header : excepte is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " but is"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 455
    :cond_3
    if-eqz v1, :cond_4

    .line 456
    const/4 v6, 0x4

    invoke-static {v3, p2, p3, v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v6

    .line 457
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 458
    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    const-string v1, "HtcZoeExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check tag footer : excepte is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " but is"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 463
    :cond_4
    if-eqz v1, :cond_5

    .line 464
    const-wide/16 v6, 0x4

    add-long/2addr v6, p2

    add-int/lit8 v8, p4, -0x8

    invoke-static {v3, v6, v7, v8}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v6

    .line 465
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v3

    .line 472
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    :goto_2
    if-nez v1, :cond_6

    .line 479
    :try_start_5
    const-string v1, "HtcZoeExtractor"

    const-string v2, "result is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 481
    if-eqz v0, :cond_6

    .line 482
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 487
    :cond_6
    :goto_3
    :try_start_7
    monitor-exit v5

    goto/16 :goto_1

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 422
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :catch_0
    move-exception v2

    .line 474
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 467
    :catch_1
    move-exception v1

    .line 468
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 472
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v1, v2

    .line 475
    goto :goto_2

    .line 473
    :catch_2
    move-exception v1

    .line 474
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v1, v2

    .line 476
    goto :goto_2

    .line 471
    :catchall_2
    move-exception v0

    .line 472
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 475
    :goto_4
    :try_start_e
    throw v0

    .line 473
    :catch_3
    move-exception v1

    .line 474
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 483
    :catch_4
    move-exception v1

    .line 484
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3
.end method

.method private parseChunk(Ljava/nio/channels/FileChannel;[JI)Z
    .locals 14

    .prologue
    .line 532
    const-string v1, "HtcZoeExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering parseChunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x0

    aget-wide v1, p2, v1

    .line 536
    invoke-static {p1, v1, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/nio/channels/FileChannel;J)I

    move-result v3

    int-to-long v5, v3

    .line 537
    const-wide/16 v3, 0x4

    add-long/2addr v3, v1

    invoke-static {p1, v3, v4}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/nio/channels/FileChannel;J)I

    move-result v7

    .line 539
    const-string v3, "HtcZoeExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v3, 0x4

    new-array v8, v3, [C

    .line 541
    invoke-static {v7, v8}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->MakeFourCCString(I[C)V

    .line 542
    const-string v3, "HtcZoeExtractor"

    const-string v4, "chunk %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-wide/16 v3, 0x8

    add-long/2addr v3, v1

    .line 545
    const/4 v1, 0x0

    aget-wide v1, p2, v1

    add-long/2addr v1, v5

    sub-long/2addr v1, v3

    .line 547
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-nez v9, :cond_0

    .line 549
    invoke-static {p1, v3, v4}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readLong(Ljava/nio/channels/FileChannel;J)J

    move-result-wide v5

    .line 551
    const-wide/16 v9, 0x8

    add-long/2addr v3, v9

    .line 553
    const-wide/16 v9, 0x10

    cmp-long v9, v5, v9

    if-gez v9, :cond_1

    .line 554
    const-string v1, "HtcZoeExtractor"

    const-string v2, " The smallest valid chunk is 16 bytes long in this case."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x0

    .line 642
    :goto_0
    return v1

    .line 558
    :cond_0
    const-wide/16 v9, 0x8

    cmp-long v9, v5, v9

    if-gez v9, :cond_1

    .line 559
    const-string v1, "HtcZoeExtractor"

    const-string v2, "The smallest valid chunk is 8 bytes long."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v1, 0x0

    goto :goto_0

    .line 563
    :cond_1
    const-string v9, "HtcZoeExtractor"

    const-string v10, "parsing chunk %s at depth %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v9, 0x6d

    const/16 v10, 0x6f

    const/16 v11, 0x6f

    const/16 v12, 0x76

    invoke-static {v9, v10, v11, v12}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v9

    if-eq v7, v9, :cond_2

    const/16 v9, 0x75

    const/16 v10, 0x64

    const/16 v11, 0x74

    const/16 v12, 0x61

    invoke-static {v9, v10, v11, v12}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v9

    if-ne v7, v9, :cond_6

    .line 567
    :cond_2
    const-string v1, "HtcZoeExtractor"

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    aget-wide v1, p2, v1

    add-long/2addr v5, v1

    .line 570
    const/4 v1, 0x0

    aput-wide v3, p2, v1

    .line 571
    :cond_3
    const/4 v1, 0x0

    aget-wide v1, p2, v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_4

    .line 572
    add-int/lit8 v1, p3, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->parseChunk(Ljava/nio/channels/FileChannel;[JI)Z

    move-result v1

    .line 573
    if-nez v1, :cond_3

    goto :goto_0

    .line 578
    :cond_4
    const/4 v1, 0x0

    aget-wide v1, p2, v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 579
    const/4 v1, 0x0

    goto :goto_0

    .line 582
    :cond_5
    const/16 v1, 0x6d

    const/16 v2, 0x6f

    const/16 v3, 0x6f

    const/16 v4, 0x76

    invoke-static {v1, v2, v3, v4}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v1

    if-ne v7, v1, :cond_7

    .line 583
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 586
    :cond_6
    const/16 v8, 0x68

    const/16 v9, 0x74

    const/16 v10, 0x63

    const/16 v11, 0x62

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 587
    const-string v1, "HtcZoeExtractor"

    const-string v2, "Found Htc MetaData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-wide v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableOffset:J

    .line 589
    iput-wide v5, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableSize:J

    iput-wide v5, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    move-object v1, p0

    move-object v2, p1

    .line 590
    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->parseHtcMetaData(Ljava/nio/channels/FileChannel;JJ)Z

    .line 591
    const-string v1, "HtcZoeExtractor"

    const-string v2, "Parse Htc MetaData done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v1, 0x0

    aget-wide v2, p2, v1

    add-long/2addr v2, v5

    aput-wide v2, p2, v1

    .line 642
    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 593
    :cond_8
    const/16 v8, 0x5f

    const/16 v9, 0x68

    const/16 v10, 0x74

    const/16 v11, 0x63

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v8

    if-eq v7, v8, :cond_9

    const/16 v8, 0x64

    const/16 v9, 0x74

    const/16 v10, 0x61

    const/16 v11, 0x68

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 595
    :cond_9
    const-string v1, "HtcZoeExtractor"

    const-string v2, "Found HTC box"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v1, 0x0

    aget-wide v2, p2, v1

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    aput-wide v2, p2, v1

    .line 597
    add-int/lit8 v1, p3, 0x1

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->parseChunk(Ljava/nio/channels/FileChannel;[JI)Z

    goto :goto_1

    .line 598
    :cond_a
    const/16 v8, 0x73

    const/16 v9, 0x6c

    const/16 v10, 0x6d

    const/16 v11, 0x74

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v8

    if-ne v7, v8, :cond_d

    .line 599
    const-string v3, "HtcZoeExtractor"

    const-string v4, "Found slmt box"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-gez v1, :cond_b

    .line 601
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 604
    :cond_b
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    const-string v2, "SLMT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 605
    const-string v1, "HtcZoeExtractor"

    const-string v2, "Tag [SLMT] is duplicated, remove previous one."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_c
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    const-string v2, "SLMT"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v1, 0x0

    aget-wide v2, p2, v1

    add-long/2addr v2, v5

    aput-wide v2, p2, v1

    goto :goto_1

    .line 609
    :cond_d
    const/16 v8, 0xa9

    const/16 v9, 0x78

    const/16 v10, 0x79

    const/16 v11, 0x7a

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->FOURCC(CCCC)I

    move-result v8

    if-ne v7, v8, :cond_11

    .line 610
    const-string v7, "HtcZoeExtractor"

    const-string v8, "Found \u00a9xyz box"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-wide/16 v7, 0x8

    cmp-long v7, v1, v7

    if-gez v7, :cond_e

    .line 617
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 627
    :cond_e
    const-wide/16 v7, 0x5

    sub-long/2addr v1, v7

    .line 628
    const-wide/16 v7, 0x12

    cmp-long v7, v1, v7

    if-ltz v7, :cond_f

    .line 629
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 632
    :cond_f
    const-wide/16 v7, 0x4

    add-long/2addr v3, v7

    long-to-int v1, v1

    invoke-static {p1, v3, v4, v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    const-string v3, "KLOC"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 634
    const-string v2, "HtcZoeExtractor"

    const-string v3, "Tag [KLOC] is duplicated, remove previous one."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_10
    iget-object v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    const-string v3, "KLOC"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const/4 v1, 0x0

    aget-wide v2, p2, v1

    add-long/2addr v2, v5

    aput-wide v2, p2, v1

    goto/16 :goto_1

    .line 640
    :cond_11
    const/4 v1, 0x0

    aget-wide v2, p2, v1

    add-long/2addr v2, v5

    aput-wide v2, p2, v1

    goto/16 :goto_1
.end method

.method private parseHtcMetaData(Ljava/nio/channels/FileChannel;JJ)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 647
    .line 652
    long-to-int v1, p4

    invoke-static {p1, p2, p3, v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v1

    .line 653
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 655
    invoke-static {v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableVersion:I

    .line 657
    invoke-static {v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v5, v0

    .line 659
    :goto_0
    if-eq v1, v0, :cond_1

    .line 660
    const-string v2, "HtcZoeExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Htc Table version("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") incorrect!! Skip parsing Htc table"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_1
    return v0

    .line 657
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 664
    :cond_1
    if-eqz v5, :cond_2

    .line 665
    invoke-static {v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    int-to-long v2, v0

    .line 670
    :goto_2
    invoke-static {v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 672
    const-string v0, "HtcZoeExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", use32Bits "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v0, "HtcZoeExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", size "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V

    .line 677
    iget-wide v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    int-to-long v6, v4

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    move-object v0, p0

    move-object v1, p1

    .line 678
    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->parseHtcTable(Ljava/nio/channels/FileChannel;JIZ)Z

    move-result v0

    goto :goto_1

    .line 667
    :cond_2
    invoke-static {v6}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readLong(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    goto :goto_2
.end method

.method private parseHtcTable(Ljava/nio/channels/FileChannel;JIZ)Z
    .locals 14

    .prologue
    .line 683
    const/4 v2, 0x4

    move-wide/from16 v0, p2

    invoke-static {p1, v0, v1, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v2

    .line 685
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 686
    const-string v2, "HMTa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    const-string v2, "HtcZoeExtractor"

    const-string v3, "Table header incorrect!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v2, 0x0

    .line 790
    :goto_0
    return v2

    .line 691
    :cond_0
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v2, v2, p2

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    const/4 v4, 0x4

    invoke-static {p1, v2, v3, v4}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v2

    .line 692
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 693
    const-string v2, "HMTa"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    const-string v2, "HtcZoeExtractor"

    const-string v3, "Table footer incorrect!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v2, 0x0

    goto :goto_0

    .line 699
    :cond_1
    const-wide/16 v2, 0x4

    add-long v2, v2, p2

    .line 701
    invoke-static {p1, v2, v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/nio/channels/FileChannel;J)I

    move-result v5

    .line 702
    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    .line 704
    const-string v6, "HtcZoeExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , version "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v2

    .line 710
    :goto_1
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v2, v2, p2

    const-wide/16 v7, 0x4

    sub-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-gez v2, :cond_c

    .line 712
    const/16 v2, 0xc

    invoke-static {p1, v5, v6, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v2

    .line 714
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 715
    const/4 v2, 0x4

    invoke-static {v3, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 716
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 719
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    const/4 v2, 0x1

    .line 722
    :goto_2
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 723
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 725
    const-string v3, "HtcZoeExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retriever Htc Data mType ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", isData = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", dataSize "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-wide/16 v9, 0xc

    add-long/2addr v9, v5

    .line 729
    if-eqz v2, :cond_9

    .line 730
    if-eqz p5, :cond_5

    const/16 v2, 0xc

    :goto_3
    if-ne v8, v2, :cond_7

    .line 732
    invoke-static {p1, v9, v10, v8}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v2

    .line 733
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 735
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 738
    if-eqz p5, :cond_6

    .line 739
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    int-to-long v5, v2

    .line 740
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 745
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 747
    const/4 v2, 0x1

    .line 749
    const/4 v3, -0x1

    if-eq v11, v3, :cond_2

    move-object v2, p0

    move-object v3, p1

    .line 750
    invoke-direct/range {v2 .. v7}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->checkHtcData(Ljava/nio/channels/FileChannel;Ljava/lang/String;JI)Z

    move-result v2

    .line 752
    :cond_2
    if-eqz v2, :cond_3

    .line 753
    iget-wide v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    int-to-long v12, v7

    add-long/2addr v2, v12

    iput-wide v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    .line 755
    const/4 v3, 0x0

    .line 756
    iget-object v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 757
    if-eqz v2, :cond_d

    .line 758
    iget-object v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lib1/media/zoe/HtcData;

    .line 759
    if-eqz v2, :cond_d

    .line 760
    invoke-virtual {v2, v11, v5, v6, v7}, Lcom/htc/lib1/media/zoe/HtcData;->setInfo(IJI)V

    .line 761
    const/4 v2, 0x1

    .line 764
    :goto_5
    if-nez v2, :cond_3

    .line 765
    new-instance v2, Lcom/htc/lib1/media/zoe/HtcData;

    invoke-direct {v2}, Lcom/htc/lib1/media/zoe/HtcData;-><init>()V

    .line 766
    invoke-virtual {v2, v11, v5, v6, v7}, Lcom/htc/lib1/media/zoe/HtcData;->setInfo(IJI)V

    .line 767
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_3
    :goto_6
    int-to-long v2, v8

    add-long/2addr v2, v9

    move-wide v5, v2

    .line 787
    goto/16 :goto_1

    .line 719
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 730
    :cond_5
    const/16 v2, 0x10

    goto :goto_3

    .line 742
    :cond_6
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readLong(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 743
    invoke-static {v3}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    goto :goto_4

    .line 772
    :cond_7
    const-string v3, "HtcZoeExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size of data info is not correct, expect"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p5, :cond_8

    const/16 v2, 0xc

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    const/16 v2, 0x10

    goto :goto_7

    .line 774
    :cond_9
    const/high16 v2, 0x400000

    if-ge v8, v2, :cond_b

    .line 775
    invoke-static {p1, v9, v10, v8}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v2

    .line 776
    const-string v3, "HtcZoeExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 778
    const-string v3, "HtcZoeExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is duplicated, remove previous one."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_a
    iget-object v3, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 783
    :cond_b
    const-string v2, "HtcZoeExtractor"

    const-string v3, "size of metadata is over 4MB, not allowed to read"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 790
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_5
.end method

.method private static read(Ljava/io/ByteArrayInputStream;I)[B
    .locals 2

    .prologue
    .line 871
    new-array v0, p1, [B

    .line 872
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 873
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ERROR I/O"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    return-object v0
.end method

.method private static read(Ljava/nio/channels/FileChannel;JI)[B
    .locals 2

    .prologue
    .line 892
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 893
    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-ge v1, p3, :cond_0

    .line 894
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ERROR I/O"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static readInt(Ljava/io/ByteArrayInputStream;)I
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 860
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static readInt(Ljava/nio/channels/FileChannel;J)I
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v0

    .line 880
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static readLong(Ljava/io/ByteArrayInputStream;)J
    .locals 2

    .prologue
    .line 865
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 866
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static readLong(Ljava/nio/channels/FileChannel;J)J
    .locals 2

    .prologue
    .line 886
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->read(Ljava/nio/channels/FileChannel;JI)[B

    move-result-object v0

    .line 887
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized readMetadata()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 499
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcZoeExtractor"

    const-string v2, "readMetadata"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mInitCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    .line 504
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 506
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 509
    const/4 v0, 0x1

    new-array v3, v0, [J

    .line 512
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v2, v3, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->parseChunk(Ljava/nio/channels/FileChannel;[JI)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 520
    :goto_1
    if-nez v0, :cond_1

    .line 526
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mInitCheck:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 517
    :catch_0
    move-exception v0

    move v0, v1

    .line 518
    goto :goto_1
.end method

.method private declared-synchronized setDataSourceFd(Ljava/io/FileDescriptor;)V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd is null or invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    .line 90
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t dup fd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 92
    :cond_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public extractHtcDataByIndex(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-static {p1}, Lcom/htc/lib1/media/zoe/a;->isDataKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcData(Ljava/lang/String;)Lcom/htc/lib1/media/zoe/b;

    move-result-object v1

    .line 282
    if-nez v1, :cond_2

    .line 294
    :cond_1
    :goto_0
    return-object v0

    .line 288
    :cond_2
    invoke-interface {v1, p2}, Lcom/htc/lib1/media/zoe/b;->getOffset(I)J

    move-result-wide v2

    .line 289
    invoke-interface {v1, p2}, Lcom/htc/lib1/media/zoe/b;->getLength(I)I

    move-result v1

    .line 290
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    if-lez v1, :cond_1

    .line 292
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->genInputStream(Ljava/lang/String;JI)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public extractHtcDataByIndexAsByteArray(Ljava/lang/String;I)[B
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {p1}, Lcom/htc/lib1/media/zoe/a;->isDataKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcDataByIndex(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 309
    if-nez v2, :cond_2

    .line 310
    const-string v1, "HtcZoeExtractor"

    const-string v2, "inputstream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    :goto_0
    return-object v0

    .line 314
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcData(Ljava/lang/String;)Lcom/htc/lib1/media/zoe/b;

    move-result-object v1

    .line 315
    if-nez v1, :cond_3

    .line 316
    const-string v1, "HtcZoeExtractor"

    const-string v2, "htcdata is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_3
    invoke-interface {v1, p2}, Lcom/htc/lib1/media/zoe/b;->getOffset(I)J

    move-result-wide v3

    .line 321
    invoke-interface {v1, p2}, Lcom/htc/lib1/media/zoe/b;->getLength(I)I

    move-result v5

    .line 324
    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-ltz v1, :cond_5

    if-lez v5, :cond_5

    .line 328
    add-int/lit8 v1, v5, -0x8

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    add-int/lit8 v4, v5, -0x8

    if-eq v3, v4, :cond_6

    .line 330
    const-string v4, "HtcZoeExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read data error : except read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes but is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :goto_1
    if-eqz v2, :cond_1

    .line 338
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v1

    .line 334
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    if-eqz v2, :cond_1

    .line 338
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    .line 337
    if-eqz v2, :cond_4

    .line 338
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 341
    :cond_4
    :goto_3
    throw v0

    .line 339
    :catch_3
    move-exception v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 346
    :cond_5
    const-string v1, "HtcZoeExtractor"

    const-string v2, "byte[] is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public extractHtcMetadataAsInt(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 157
    invoke-static {p1}, Lcom/htc/lib1/media/zoe/a;->isMetadataKeyValidForInt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcMetadata(Ljava/lang/String;)[B

    move-result-object v1

    .line 161
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 169
    :cond_1
    :goto_0
    return v0

    .line 164
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 166
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->release()V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public isZoe()Z
    .locals 1

    .prologue
    .line 264
    const-string v0, "ZJPG"

    invoke-direct {p0, v0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->extractHtcData(Ljava/lang/String;)Lcom/htc/lib1/media/zoe/b;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    const-string v0, "HtcZoeExtractor"

    const-string v2, "release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mInitCheck:Z

    .line 57
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableOffset:J

    .line 61
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableSize:J

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcTableVersion:I

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mHtcDataSize:J

    .line 65
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mPFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->mInitCheck:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 140
    invoke-direct {p0, v2}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->setDataSourceFd(Ljava/io/FileDescriptor;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 142
    invoke-direct {p0}, Lcom/htc/lib1/media/zoe/HtcZoeExtractor;->readMetadata()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    monitor-exit v1

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
