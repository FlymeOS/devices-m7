.class Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;
.super Ljava/lang/Object;
.source "AutoTestPluginLoader.java"


# static fields
.field private static final AT_CLASS:Ljava/lang/String; = "com.htc.autotest.server.CIServerExt"

.field private static final AT_METHOD:Ljava/lang/String; = "dispatchCommand"

.field private static final BUNDLE_CLASSPATH:Ljava/lang/String; = "ClassPath"

.field private static final INTENT_CIBUNDLE:Ljava/lang/String; = "com.htc.autotest.command.worker.CIBundle"

.field private static final TAG:Ljava/lang/String; = "AutoTestPluginLoader"

.field private static sInstance:Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mLoader:Ldalvik/system/PathClassLoader;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->sInstance:Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    .line 25
    iput-object v1, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    .line 26
    iput-object v1, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    .line 27
    iput-object v1, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private ensureInit(Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 39
    iget-boolean v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    if-eqz v2, :cond_0

    .line 75
    :goto_0
    return v0

    .line 44
    :cond_0
    :try_start_0
    const-string v2, "com.htc.autotest.command.worker.CIBundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 45
    const-string v3, "ClassPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "AutoTestPluginLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoTestPluginLoader.ensureInit(), cp_loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v3, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    .line 50
    const-string v2, "com.htc.autotest.server.CIServerExt"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    .line 51
    iget-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    const-string v3, "dispatchCommand"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    .line 53
    iget-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    if-nez v0, :cond_2

    .line 63
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    .line 64
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    .line 65
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    .line 67
    const-string v0, "AutoTestPluginLoader"

    const-string v1, "AutoTestPluginLoader.ensureInit() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 53
    goto :goto_1

    .line 71
    :cond_2
    const-string v0, "AutoTestPluginLoader"

    const-string v1, "AutoTestPluginLoader.ensureInit() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    const-string v1, "AutoTestPluginLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    if-nez v0, :cond_3

    .line 63
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    .line 64
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    .line 65
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    .line 67
    const-string v0, "AutoTestPluginLoader"

    const-string v1, "AutoTestPluginLoader.ensureInit() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 71
    :cond_3
    const-string v0, "AutoTestPluginLoader"

    const-string v1, "AutoTestPluginLoader.ensureInit() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mInited:Z

    if-nez v1, :cond_4

    .line 63
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mLoader:Ldalvik/system/PathClassLoader;

    .line 64
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mClazz:Ljava/lang/Class;

    .line 65
    iput-object v7, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    .line 67
    const-string v1, "AutoTestPluginLoader"

    const-string v2, "AutoTestPluginLoader.ensureInit() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_3
    throw v0

    :cond_4
    const-string v1, "AutoTestPluginLoader"

    const-string v2, "AutoTestPluginLoader.ensureInit() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getInstance()Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->sInstance:Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    invoke-direct {v0}, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;-><init>()V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->sInstance:Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    .line 34
    :cond_0
    sget-object v0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->sInstance:Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;

    return-object v0
.end method


# virtual methods
.method public dispatchCommand(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p2}, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->ensureInit(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return v1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/AutoTestPluginLoader;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 90
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 97
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "AutoTestPluginLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    goto :goto_1
.end method
