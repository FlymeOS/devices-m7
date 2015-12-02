.class public abstract Lcom/htc/lib1/autotest/middleware/CSRController;
.super Ljava/lang/Object;
.source "CSRController.java"


# instance fields
.field private mCallback:Lcom/htc/lib1/autotest/middleware/ISRCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract genActionString(Lcom/htc/lib1/autotest/middleware/CSREvent;)[Ljava/lang/String;
.end method

.method public getCallback()Lcom/htc/lib1/autotest/middleware/ISRCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CSRController;->mCallback:Lcom/htc/lib1/autotest/middleware/ISRCallback;

    return-object v0
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getSpy()Lcom/htc/lib1/autotest/middleware/ISRSpy;
.end method

.method public abstract injectEvent(Lcom/htc/lib1/autotest/middleware/CSREvent;)V
.end method

.method public recordEvent(Lcom/htc/lib1/autotest/middleware/CSREvent;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CSRController;->mCallback:Lcom/htc/lib1/autotest/middleware/ISRCallback;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CSRController;->mCallback:Lcom/htc/lib1/autotest/middleware/ISRCallback;

    invoke-interface {v0, p1}, Lcom/htc/lib1/autotest/middleware/ISRCallback;->record(Lcom/htc/lib1/autotest/middleware/CSREvent;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/htc/lib1/autotest/middleware/ISRCallback;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/lib1/autotest/middleware/CSRController;->mCallback:Lcom/htc/lib1/autotest/middleware/ISRCallback;

    .line 26
    return-void
.end method
