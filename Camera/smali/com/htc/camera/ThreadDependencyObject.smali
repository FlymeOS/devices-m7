.class public abstract Lcom/htc/camera/ThreadDependencyObject;
.super Ljava/lang/Object;
.source "ThreadDependencyObject.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field private final m_DependencyThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    .line 20
    return-void
.end method


# virtual methods
.method public final getDependencyThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public final isDependencyThread()Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final threadAccessCheck()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cross-thread access"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method
