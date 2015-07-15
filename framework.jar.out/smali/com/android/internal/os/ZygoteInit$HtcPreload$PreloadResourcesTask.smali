.class Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit$HtcPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadResourcesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;


# direct methods
.method constructor <init>(Lcom/android/internal/os/ZygoteInit$HtcPreload;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;->this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1295
    :try_start_0
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadResources()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$700()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    return-void

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Zygote"

    const-string v2, "Error preloading resources"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    iget-object v1, p0, Lcom/android/internal/os/ZygoteInit$HtcPreload$PreloadResourcesTask;->this$0:Lcom/android/internal/os/ZygoteInit$HtcPreload;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/os/ZygoteInit$HtcPreload;->mPreloadFail:Z
    invoke-static {v1, v2}, Lcom/android/internal/os/ZygoteInit$HtcPreload;->access$602(Lcom/android/internal/os/ZygoteInit$HtcPreload;Z)Z

    .line 1299
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 1300
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 1302
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 1303
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 1305
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
