.class Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final WAPPERMETHOD:Ljava/lang/String;

.field private mCallback:Lcom/htc/camera/wrapper/a;

.field private mInstance:Ljava/lang/Object;

.field private mProxy:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/camera/wrapper/HtcWrapCamera;


# direct methods
.method public constructor <init>(Lcom/htc/camera/wrapper/HtcWrapCamera;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->this$0:Lcom/htc/camera/wrapper/HtcWrapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "OnReceive"

    iput-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->WAPPERMETHOD:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->getProxy()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mProxy:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mProxy:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->createInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mInstance:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method private createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    :try_start_0
    const-string v1, "android.hardware.HtcHDKCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 82
    const-string v2, "android.hardware.Camera$HtcCallback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 85
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    :try_start_0
    const-string v1, "android.hardware.Camera$HtcCallback"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 67
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 68
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 94
    const-string v0, "OnReceive"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mCallback:Lcom/htc/camera/wrapper/a;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mCallback:Lcom/htc/camera/wrapper/a;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x3

    aget-object v0, p3, v0

    check-cast v0, Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/htc/camera/wrapper/a;->OnReceive(IIILandroid/hardware/Camera;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHtcCallback(Lcom/htc/camera/wrapper/a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->mCallback:Lcom/htc/camera/wrapper/a;

    .line 106
    return-void
.end method
