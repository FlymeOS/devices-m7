.class public Lcom/htc/camera/sina/GifGenerator;
.super Ljava/lang/Object;
.source "GifGenerator.java"


# static fields
.field public static lastGenerateGIfUri:Landroid/net/Uri;

.field private static sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

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

.field public static slastGifMediaInfo:Lcom/htc/camera/media/MediaInfo;


# instance fields
.field public final isGifModeSceneReady:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isOneShotGifMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isShareKeyLongPressed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

.field private final mPropertyOwnerKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    .line 23
    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

    .line 25
    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->sHTCCamera:Ljava/lang/ref/WeakReference;

    .line 26
    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/htc/camera/media/MediaInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

    iput-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->mCurState:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 34
    const-string v0, "GifGenerator.IsShareKeyLongPressed"

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/htc/camera/property/Property;

    .line 35
    const-string v0, "GifGenerator.IsGifModeSceneReady"

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isGifModeSceneReady:Lcom/htc/camera/property/Property;

    .line 36
    const-string v0, "GifGenerator.IsOneShotGifMode"

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isOneShotGifMode:Lcom/htc/camera/property/Property;

    .line 37
    return-void
.end method

.method public static getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/htc/camera/sina/GifGenerator;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/camera/sina/GifGenerator;

    invoke-direct {v0}, Lcom/htc/camera/sina/GifGenerator;-><init>()V

    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->sHTCCamera:Ljava/lang/ref/WeakReference;

    .line 48
    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->sGifGenerator:Lcom/htc/camera/sina/GifGenerator;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public notifyGifGenerateEnd(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 85
    sput-object p1, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    .line 86
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    sget-object v1, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    new-instance v2, Lcom/htc/camera/io/Path;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/htc/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V

    sput-object v0, Lcom/htc/camera/sina/GifGenerator;->slastGifMediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 88
    sget-object v0, Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifGenerator;->setState(Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 89
    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->sHTCCamera:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/sina/GifGenerator;->sHTCCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/camera/sina/SinaWeiboStarter;->getInst(Landroid/content/Context;)Lcom/htc/camera/sina/SinaWeiboStarter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/sina/SinaWeiboStarter;->getTrigger()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 92
    invoke-static {v0}, Lcom/htc/camera/sina/AlbumGifStarter;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/AlbumGifStarter;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/sina/GifGenerator;->lastGenerateGIfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/camera/sina/AlbumGifStarter;->start(Landroid/net/Uri;)V

    .line 94
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyGifMode(Z)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isOneShotGifMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public notifyGifModeEnter()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isGifModeSceneReady:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public notifySenseChange()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/sina/GifGenerator;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public setState(Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/camera/sina/GifGenerator;->mCurState:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

    .line 81
    return-void
.end method
