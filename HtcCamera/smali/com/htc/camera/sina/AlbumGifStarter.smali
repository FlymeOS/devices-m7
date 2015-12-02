.class public Lcom/htc/camera/sina/AlbumGifStarter;
.super Ljava/lang/Object;
.source "AlbumGifStarter.java"


# static fields
.field private static sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

.field private static sHTCCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/HTCCamera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

    .line 24
    sput-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    :cond_0
    return-object v3
.end method

.method public static getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/AlbumGifStarter;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/htc/camera/sina/AlbumGifStarter;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/camera/sina/AlbumGifStarter;

    invoke-direct {v0}, Lcom/htc/camera/sina/AlbumGifStarter;-><init>()V

    sput-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    .line 39
    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sAlbumStarter:Lcom/htc/camera/sina/AlbumGifStarter;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 83
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter handleOnActivityResult() requestCode = ALBUM_REQUEST_CODE"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 85
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/htc/camera/sina/SinaWeiboStarter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/sina/SinaWeiboStarter;->getTrigger()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "AlbumGifStarter"

    const-string v2, "AlbumGifStarter handleOnActivityResult() getTrigger()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Lcom/htc/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/htc/camera/sina/SinaWeiboStarter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/sina/SinaWeiboStarter;->setTrigger(Z)V

    .line 88
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 90
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 91
    const-string v1, "AlbumGifStarter"

    const-string v2, "AlbumGifStarter handleOnActivityResult() resultCode = Activity.RESULT_OK"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/htc/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/htc/camera/sina/SinaWeiboStarter;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/camera/sina/SinaWeiboStarter;->start(Landroid/net/Uri;)Z

    .line 96
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "com.htc.album"

    const-string v2, "com.htc.album.SinaCollage.SinaGifPlayer"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter start() getAbsoluteImagePathFromUri() return null, cancel start album"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v2, "Path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/sina/AlbumGifStarter;->sHTCCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 54
    :goto_1
    if-eqz v0, :cond_2

    .line 55
    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter start()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "AlbumGifStarter"

    const-string v2, "AlbumGifStarter start() with exception: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 58
    :cond_2
    :try_start_1
    const-string v0, "AlbumGifStarter"

    const-string v1, "AlbumGifStarter start() sContext == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
