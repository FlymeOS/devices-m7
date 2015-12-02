.class public abstract Lcom/htc/camera/io/StorageSlot;
.super Ljava/lang/Object;
.source "StorageSlot.java"

# interfaces
.implements Lcom/htc/camera/af;


# static fields
.field public static final INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

.field public static final INVALID:Lcom/htc/camera/io/StorageSlot;

.field public static final PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

.field public static final STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

.field public static final TABLET_STORAGE:Lcom/htc/camera/io/StorageSlot;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final directoryPath:Ljava/lang/String;

.field public final imageContentUri:Landroid/net/Uri;

.field public final videoContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/camera/io/g;

    invoke-direct {v0}, Lcom/htc/camera/io/g;-><init>()V

    sput-object v0, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    .line 19
    new-instance v0, Lcom/htc/camera/io/k;

    invoke-direct {v0}, Lcom/htc/camera/io/k;-><init>()V

    sput-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    .line 20
    new-instance v0, Lcom/htc/camera/io/i;

    invoke-direct {v0}, Lcom/htc/camera/io/i;-><init>()V

    sput-object v0, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    .line 21
    new-instance v0, Lcom/htc/camera/io/l;

    invoke-direct {v0}, Lcom/htc/camera/io/l;-><init>()V

    sput-object v0, Lcom/htc/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/htc/camera/io/StorageSlot;

    .line 22
    new-instance v0, Lcom/htc/camera/io/f;

    invoke-direct {v0}, Lcom/htc/camera/io/f;-><init>()V

    sput-object v0, Lcom/htc/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/htc/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    .line 39
    iput-object p3, p0, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    .line 40
    return-void
.end method

.method public static getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/htc/camera/io/StorageSlot;

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternalMemorySlot()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/io/StorageSlot;->TABLET_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUniqueStorageSlot()Z
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 5

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    .line 77
    :goto_0
    return-wide v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    const-string v2, "getFreeSpace() - Error occurs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public isFat32()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    const/4 v3, 0x0

    .line 116
    :try_start_0
    const-string v2, "vfat"

    .line 117
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    iget-object v4, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 120
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    move v3, v0

    .line 123
    :goto_0
    if-eqz v3, :cond_0

    .line 124
    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v1

    .line 125
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 126
    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    const-string v6, "vfat"

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 139
    :goto_2
    return v0

    :cond_1
    move v3, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 135
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :cond_3
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 139
    goto :goto_2

    .line 137
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 134
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public isInternalMemory()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupported()Z
.end method

.method public isWritable(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    move-object v2, v1

    .line 163
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWritable() - Cannot create directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    return v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 169
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, ".probe"

    invoke-static {v2, v3}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 172
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    iget-object v1, p0, Lcom/htc/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWritable() - Cannot create temp file in directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 184
    iget-object v3, p0, Lcom/htc/camera/io/StorageSlot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWritable() - Fail to check access right of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    const/4 v0, 0x1

    goto :goto_1
.end method
