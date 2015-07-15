.class final Lcom/htc/server/report/up/HtcSystemUPWrapper;
.super Ljava/lang/Object;
.source "HtcSystemUPWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcSystemUPWrapper"

.field private static mInstance:Lcom/htc/server/report/up/HtcSystemUPWrapper;


# instance fields
.field private mAddErrorCountMethod:Ljava/lang/reflect/Method;

.field private mClassSystemUPManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mGetInstanceMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mShutdownMethod:Ljava/lang/reflect/Method;

.field private mUPManagerObj:Ljava/lang/Object;

.field private mWriteMethod1:Ljava/lang/reflect/Method;

.field private mWriteMethod2:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->init()V

    .line 85
    const-string v1, "HtcSystemUPWrapper"

    const-string v2, "init complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refection failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    const-string v2, "Get UP manager instance failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/htc/server/report/up/HtcSystemUPWrapper;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInstance:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/htc/server/report/up/HtcSystemUPWrapper;

    invoke-direct {v0}, Lcom/htc/server/report/up/HtcSystemUPWrapper;-><init>()V

    sput-object v0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInstance:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInstance:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLibPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "upmPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v0, "sysFrameDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v1, Ljava/io/File;

    const-string v3, "upm.jar"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v1, "upmFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 118
    .end local v1    # "upmFile":Ljava/io/File;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const-string v2, "/system/framework/upm.jar"

    .line 120
    :cond_1
    return-object v2
.end method

.method private init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getLibPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 99
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v1, "com.htc.upm.HtcSystemUPManager"

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    .line 100
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "getInstance"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 102
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "init"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 103
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "write"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod1:Ljava/lang/reflect/Method;

    .line 104
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "write"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, [Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, [Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod2:Ljava/lang/reflect/Method;

    .line 105
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "addErrorCount"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mAddErrorCountMethod:Ljava/lang/reflect/Method;

    .line 106
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mClassSystemUPManager:Ljava/lang/Class;

    const-string v2, "notifyShutdown"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mShutdownMethod:Ljava/lang/reflect/Method;

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public addErrorCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorType"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mAddErrorCountMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mAddErrorCountMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke addErrorCount method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke init method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onShutdown()V
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mShutdownMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mShutdownMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke notify shutdown method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "stringValue"    # Ljava/lang/String;
    .param p5, "intValue"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod1:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke write1 method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "labels"    # [Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod2:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mWriteMethod2:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcSystemUPWrapper;->mUPManagerObj:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcSystemUPWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke write2 method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
