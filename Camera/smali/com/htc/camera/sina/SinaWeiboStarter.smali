.class public Lcom/htc/camera/sina/SinaWeiboStarter;
.super Ljava/lang/Object;
.source "SinaWeiboStarter.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;


# instance fields
.field private mTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/sina/SinaWeiboStarter;->mTrigger:Z

    .line 21
    return-void
.end method

.method public static getInst(Landroid/content/Context;)Lcom/htc/camera/sina/SinaWeiboStarter;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/htc/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/htc/camera/sina/SinaWeiboStarter;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/htc/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/camera/sina/SinaWeiboStarter;

    invoke-direct {v0}, Lcom/htc/camera/sina/SinaWeiboStarter;-><init>()V

    sput-object v0, Lcom/htc/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sput-object p0, Lcom/htc/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/htc/camera/sina/SinaWeiboStarter;->sWeiboStarter:Lcom/htc/camera/sina/SinaWeiboStarter;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getTrigger()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/camera/sina/SinaWeiboStarter;->mTrigger:Z

    return v0
.end method

.method public setTrigger(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/camera/sina/SinaWeiboStarter;->mTrigger:Z

    .line 63
    return-void
.end method

.method public start(Landroid/net/Uri;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 37
    :try_start_0
    sget-object v1, Lcom/htc/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/htc/camera/sina/AlbumGifStarter;->getAbsoluteImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v3, "com.sina.mfweibo"

    const-string v4, "com.sina.mfweibo.EditActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v4, "android.intent.extra.STREAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    const-string v1, "image/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/htc/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/htc/camera/sina/SinaWeiboStarter;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    const-string v1, "SinaWeiboStarter"

    const-string v2, "SinaWeiboStarter start()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 51
    :cond_0
    const-string v1, "SinaWeiboStarter"

    const-string v2, "SinaWeiboStarter start() sContext == null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    const-string v2, "SinaWeiboStarter"

    const-string v3, "SinaWeiboStarter start() with exception: "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
