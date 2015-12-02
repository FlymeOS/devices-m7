.class Lcom/htc/camera/io/i;
.super Lcom/htc/camera/io/StorageSlot;
.source "PhoneStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/camera/io/i;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/mediamanager/MediaManagerStore$Images;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/lib1/mediamanager/MediaManagerStore$Video;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 21
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/io/i;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "removed"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "main_memory"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Phone Storage"

    return-object v0
.end method
