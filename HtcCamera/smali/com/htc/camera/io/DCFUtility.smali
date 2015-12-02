.class public final Lcom/htc/camera/io/DCFUtility;
.super Ljava/lang/Object;
.source "DCFUtility.java"


# static fields
.field private static final m_DCFInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/io/DCFInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_EnumFilesForDirCounter:Lcom/htc/camera/io/d;

.field private static final m_EnumFilesForFileCounter:Lcom/htc/camera/io/d;

.field private static final m_ExtraFileNameCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/io/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Lcom/htc/camera/io/a;

    invoke-direct {v0}, Lcom/htc/camera/io/a;-><init>()V

    sput-object v0, Lcom/htc/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/htc/camera/io/d;

    .line 217
    new-instance v0, Lcom/htc/camera/io/b;

    invoke-direct {v0}, Lcom/htc/camera/io/b;-><init>()V

    sput-object v0, Lcom/htc/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/htc/camera/io/d;

    return-void
.end method

.method public static checkFileExistence(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-static {p1, p2, p3}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    sget-object v3, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v0, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 94
    sget-object v0, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/c;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/htc/camera/io/c;->a(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 97
    :cond_2
    monitor-exit v3

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final findLatestDirectoryCounter(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;)I
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput v2, v0, v1

    .line 203
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 204
    sget-object v2, Lcom/htc/camera/io/DCFUtility;->m_EnumFilesForDirCounter:Lcom/htc/camera/io/d;

    invoke-static {p0, v2, v1}, Lcom/htc/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/htc/camera/io/d;Ljava/lang/Object;)Z

    .line 205
    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "DCFUtility"

    const-string v2, "findLatestDirectoryCounter() - Cannot find directory counter"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static findLatestMainFileCounter(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;)I
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 270
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 271
    sget-object v2, Lcom/htc/camera/io/DCFUtility;->m_EnumFilesForFileCounter:Lcom/htc/camera/io/d;

    invoke-static {p0, v2, v1}, Lcom/htc/camera/io/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/htc/camera/io/d;Ljava/lang/Object;)Z

    .line 272
    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "DCFUtility"

    const-string v2, "findLatestMainFileCounter() - Cannot find file counter"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/io/DCFInfo;",
            "Lcom/htc/camera/io/FileFormat;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 286
    sget-object v4, Lcom/htc/camera/io/FileUtility$InformationSource;->Cache:Lcom/htc/camera/io/FileUtility$InformationSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/io/FileUtility$InformationSource;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    return v0
.end method

.method public static findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/io/FileUtility$InformationSource;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/io/DCFInfo;",
            "Lcom/htc/camera/io/FileFormat;",
            "Lcom/htc/camera/io/FileUtility$InformationSource;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p2, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    const/16 v1, 0x64

    iget v2, p2, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getCounterFromPreference(Lcom/htc/camera/Settings;Ljava/lang/String;II)I

    move-result v2

    .line 294
    iget-object v0, p2, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    const/4 v1, 0x0

    iget v3, p2, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v0, v1, v3}, Lcom/htc/camera/io/DCFUtility;->getCounterFromPreference(Lcom/htc/camera/Settings;Ljava/lang/String;II)I

    move-result v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 299
    const/16 v5, 0x270f

    invoke-static {v1, v5, p4}, Lcom/htc/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/htc/camera/io/FileUtility$InformationSource;)I

    move-result v5

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v3, v6, v3

    .line 301
    const-string v6, "DCFUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\' is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", cost "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    add-int/lit8 v1, v0, 0x1

    .line 305
    iget v0, p2, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v1, v0, :cond_0

    const/16 v0, 0x270f

    if-lt v5, v0, :cond_2

    .line 307
    :cond_0
    iget v0, p2, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v2, v0, :cond_1

    .line 309
    const-string v0, "DCFUtility"

    const-string v1, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    .line 312
    :cond_1
    const/4 v1, 0x1

    .line 313
    add-int/lit8 v2, v2, 0x1

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v3, Lcom/htc/camera/io/FileCounter;

    invoke-direct {v3, v1}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    invoke-static {v0, p2, v3, p3}, Lcom/htc/camera/io/DCFUtility;->checkFileExistence(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 320
    const-string v0, "DCFUtility"

    const-string v1, "findNextDirAndFileCounters() - Scan for latest directory and file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p1, p2}, Lcom/htc/camera/io/DCFUtility;->findLatestDirectoryCounter(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;)I

    move-result v2

    .line 324
    if-gez v2, :cond_3

    .line 326
    const-string v0, "DCFUtility"

    const-string v1, "findNextDirAndFileCounters() - Cannot find latest directory counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_3
    const/16 v0, 0x64

    if-ge v2, v0, :cond_4

    .line 330
    const/16 v2, 0x64

    .line 331
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0, p2}, Lcom/htc/camera/io/DCFUtility;->findLatestMainFileCounter(Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;)I

    move-result v1

    .line 335
    if-gez v1, :cond_5

    .line 337
    const-string v0, "DCFUtility"

    const-string v1, "findNextDirAndFileCounters() - Cannot find latest file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_5
    const-string v3, "DCFUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findNextDirAndFileCounters() - Latest directory counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", file counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 348
    const/16 v5, 0x270f

    invoke-static {v0, v5, p4}, Lcom/htc/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/htc/camera/io/FileUtility$InformationSource;)I

    move-result v5

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v3, v6, v3

    .line 350
    const-string v6, "DCFUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findNextDirAndFileCounters() - File count in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    .line 354
    iget v3, p2, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    if-gt v1, v3, :cond_6

    const/16 v3, 0x270f

    if-lt v5, v3, :cond_8

    .line 356
    :cond_6
    iget v0, p2, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    if-lt v2, v0, :cond_7

    .line 358
    const-string v0, "DCFUtility"

    const-string v1, "findNextDirAndFileCounters() - No more directory and file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 361
    :cond_7
    const/4 v1, 0x0

    .line 362
    add-int/lit8 v2, v2, 0x1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 371
    :cond_8
    invoke-static {p1}, Lcom/htc/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 373
    const-string v0, "DCFUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 376
    :cond_9
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 378
    const-string v1, "DCFUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findNextDirAndFileCounters() - Cannot create directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 383
    :cond_a
    const-string v0, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNextDirAndFileCounters() - Directory counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", file counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    const-string v1, "DCFUtility"

    const-string v2, "findNextDirAndFileCounters() - Cannot find next available counters"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static findNextZoeCounters(Lcom/htc/camera/Settings;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Lcom/htc/camera/io/StorageSlot;",
            "Lcom/htc/camera/io/DCFInfo;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 400
    sget-object v3, Lcom/htc/camera/io/FileUtility$InformationSource;->CacheOrFileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextZoeCounters(Lcom/htc/camera/Settings;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileUtility$InformationSource;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    return v0
.end method

.method public static findNextZoeCounters(Lcom/htc/camera/Settings;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileUtility$InformationSource;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Lcom/htc/camera/io/StorageSlot;",
            "Lcom/htc/camera/io/DCFInfo;",
            "Lcom/htc/camera/io/FileUtility$InformationSource;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 405
    invoke-static {p1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 406
    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string v0, "DCFUtility"

    const-string v1, "findNextZoeCounters() - Cannot find available ZOE photo file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 461
    :goto_0
    return v0

    .line 419
    :cond_0
    new-instance v8, Lcom/htc/camera/io/FileCounter;

    iget-object v0, p4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 420
    new-instance v9, Lcom/htc/camera/io/FileCounter;

    iget-object v0, p5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 421
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    invoke-static {p2, p1, v8, v9, v0}, Lcom/htc/camera/io/DCFUtility;->getFilePath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v2

    .line 424
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 426
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    const-string v3, "DCFUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findNextZoeCounters() - Fail to check ZOE video file path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    :cond_1
    sget-object v3, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    const-string v0, "DCFUtility"

    const-string v1, "findNextZoeCounters() - Cannot find available ZOE video file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 443
    goto :goto_0

    .line 447
    :cond_2
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static {p2, p1, v8, v9, v0}, Lcom/htc/camera/io/DCFUtility;->getFilePath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 452
    goto :goto_0

    .line 454
    :catch_1
    move-exception v0

    .line 456
    const-string v2, "DCFUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNextZoeCounters() - Fail to check ZOE photo file path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_3
    const-string v0, "DCFUtility"

    const-string v1, "findNextZoeCounters() - Fail to find counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 461
    goto/16 :goto_0
.end method

.method private static getCounterFromPreference(Lcom/htc/camera/Settings;Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 471
    if-nez p1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return p2

    .line 473
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 474
    if-lt v0, p2, :cond_0

    .line 476
    if-le v0, p3, :cond_2

    move p2, p3

    .line 477
    goto :goto_0

    :cond_2
    move p2, v0

    .line 478
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    const-string v1, "DCFUtility"

    const-string v2, "getCounterFromPreference() - Cannot read counter from preference"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    const-string v1, "DCIM"

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/io/DCFInfo;->dirFreeChar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    invoke-static {p1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    invoke-static {p0, p2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    iget-object v0, p0, Lcom/htc/camera/io/DCFInfo;->fileTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget v0, p1, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    .line 524
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 526
    iget v1, p0, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 527
    add-int/lit16 v0, v0, 0x3e8

    .line 530
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :goto_1
    iget v0, p0, Lcom/htc/camera/io/DCFInfo;->subCounterDigits:I

    if-lez v0, :cond_3

    .line 539
    iget v0, p0, Lcom/htc/camera/io/DCFInfo;->subCounterDigits:I

    move v1, v2

    :goto_2
    if-lez v0, :cond_2

    .line 540
    mul-int/lit8 v1, v1, 0xa

    .line 539
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 529
    :cond_0
    add-int/lit16 v0, v0, 0x2710

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 541
    :cond_2
    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Lcom/htc/camera/io/FileCounter;->subCounter:I

    mul-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_3
    if-eqz p2, :cond_4

    .line 546
    iget-object v0, p2, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    invoke-static {p1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/htc/camera/io/DCFUtility;->getFilePath(Lcom/htc/camera/io/DCFInfo;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Lcom/htc/camera/io/DCFInfo;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    invoke-static {p0, p1, p2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p4}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDcimDirectoryWritable(Lcom/htc/camera/io/StorageSlot;)Z
    .locals 1

    .prologue
    .line 636
    if-nez p0, :cond_0

    .line 638
    const-string v0, "slot"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_0
    const-string v0, "DCIM"

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/StorageSlot;->isWritable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static registerDCFInfo(Lcom/htc/camera/io/DCFInfo;)V
    .locals 2

    .prologue
    .line 651
    if-nez p0, :cond_0

    .line 653
    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 656
    :cond_0
    sget-object v1, Lcom/htc/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 658
    :try_start_0
    sget-object v0, Lcom/htc/camera/io/DCFUtility;->m_DCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerFileNameChecker(Lcom/htc/camera/io/c;)V
    .locals 2

    .prologue
    .line 667
    if-nez p0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_0
    sget-object v1, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 671
    :try_start_0
    sget-object v0, Lcom/htc/camera/io/DCFUtility;->m_ExtraFileNameCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static restoreFileCounter(Lcom/htc/camera/Settings;Lcom/htc/camera/io/DCFInfo;)V
    .locals 7

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 681
    iget-object v1, p1, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 683
    const-string v0, "DCFUtility"

    const-string v1, "restoreFileCounter() - No file counter preference"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v1, p1, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget v2, p1, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    invoke-static {p0, v1, v3, v2}, Lcom/htc/camera/io/DCFUtility;->getCounterFromPreference(Lcom/htc/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    .line 689
    add-int/lit8 v1, v1, -0x1

    .line 690
    if-ge v1, v3, :cond_4

    .line 692
    iget-object v1, p1, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p1, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget v2, p1, Lcom/htc/camera/io/DCFInfo;->maxDirectoryCounter:I

    invoke-static {p0, v1, v4, v2}, Lcom/htc/camera/io/DCFUtility;->getCounterFromPreference(Lcom/htc/camera/Settings;Ljava/lang/String;II)I

    move-result v1

    .line 698
    if-le v1, v4, :cond_1

    .line 700
    add-int/lit8 v1, v1, -0x1

    .line 701
    iget v0, p1, Lcom/htc/camera/io/DCFInfo;->maxFileCounter:I

    .line 702
    const-string v2, "DCFUtility"

    const-string v3, "restoreFileCounter() - Restore directory counter to "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " and file counter to "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    iget-object v2, p1, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 718
    :goto_1
    if-gtz v0, :cond_3

    .line 719
    iget-object v0, p1, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/Settings;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 707
    :cond_1
    const-string v1, "DCFUtility"

    const-string v2, "restoreFileCounter() - Reach minimum file and directory counters"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 713
    :cond_2
    const-string v1, "DCFUtility"

    const-string v2, "restoreFileCounter() - Reach minimum file counter, but no directory counter preference"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 721
    :cond_3
    iget-object v1, p1, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
