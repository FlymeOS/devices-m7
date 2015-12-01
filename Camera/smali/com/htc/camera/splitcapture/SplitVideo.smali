.class public Lcom/htc/camera/splitcapture/SplitVideo;
.super Ljava/lang/Object;
.source "SplitVideo.java"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_ReferenceCounter:I

.field m_VideoPath:Lcom/htc/camera/io/Path;


# direct methods
.method public constructor <init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    .line 32
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    .line 33
    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_Context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/io/Path;)Z
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/htc/camera/splitcapture/SplitVideo;->deleteFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitVideo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/io/Path;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideo;->removeFromMediaStore(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)Z
    .locals 1

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideo;->renameFile(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)Z

    move-result v0

    return v0
.end method

.method private static deleteFile(Lcom/htc/camera/io/Path;)Z
    .locals 2

    .prologue
    .line 83
    const-string v0, "SplitVideo"

    const-string v1, "deleteFile()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-nez p0, :cond_0

    .line 88
    const-string v0, "SplitVideo"

    const-string v1, "deleteFile() - invalid argument(s)"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method private static removeFromMediaStore(Lcom/htc/camera/io/Path;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "SplitVideo"

    const-string v2, "removeFromMediaStore() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    const-string v0, "SplitVideo"

    const-string v1, "removeFromMediaStore() - invalid argument(s)"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/io/Path;->getStorageSlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 124
    if-nez v0, :cond_3

    .line 126
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, v0, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    const-string v2, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_2
    if-eqz v1, :cond_2

    .line 137
    :goto_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 140
    :cond_2
    const-string v0, "SplitVideo"

    const-string v1, "removeFromMediaStore() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    goto :goto_1

    .line 129
    :cond_4
    const-string v0, "SplitVideo"

    const-string v2, "removeFromMediaProvider() - No storage slot, cannot delete from media store"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    const-string v2, "SplitVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFromMediaProvider() - Fail to delete \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from media store"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v1, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 137
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 136
    :cond_5
    throw v0
.end method

.method private static renameFile(Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)Z
    .locals 3

    .prologue
    .line 184
    const-string v0, "SplitVideo"

    const-string v1, "renameFile()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-nez p0, :cond_0

    .line 189
    const-string v0, "SplitVideo"

    const-string v1, "renameFile() - invalid argument(s)"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addReference()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    return v0
.end method

.method public delete(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_1

    .line 51
    const-string v0, "SplitVideo"

    const-string v1, "delete() - videoPath is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo$1;

    const-string v1, "SplitVideo deletion thread"

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/camera/splitcapture/SplitVideo$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideo;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getVideoPath()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    return-object v0
.end method

.method public removeReference()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_ReferenceCounter:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rename(Lcom/htc/camera/io/Path;ZLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "SplitVideo"

    const-string v1, "delete() - videoPath is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 153
    :cond_0
    if-nez p1, :cond_1

    .line 155
    const-string v0, "SplitVideo"

    const-string v1, "delete() - newFilePath is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo$2;

    const-string v2, "SplitVideo rename thread"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideo$2;-><init>(Lcom/htc/camera/splitcapture/SplitVideo;Ljava/lang/String;Lcom/htc/camera/io/Path;ZLjava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
