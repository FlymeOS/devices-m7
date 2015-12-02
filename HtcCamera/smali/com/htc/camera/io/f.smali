.class Lcom/htc/camera/io/f;
.super Lcom/htc/camera/io/StorageSlot;
.source "InternalSmallStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/camera/io/f;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/mediamanager/MediaManagerStore$Images;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/lib1/mediamanager/MediaManagerStore$Video;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 24
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "InternalSmallStorageSlot"

    const-string v2, "getDirectoryPath"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/camera/io/f;->directoryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "unknown"

    .line 57
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/io/f;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "removed"

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->getPhoneStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/htc/camera/io/f;->directoryPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->hasPhoneStorage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "main_memory"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "Internal Small Storage"

    return-object v0
.end method
