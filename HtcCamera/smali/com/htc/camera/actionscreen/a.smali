.class final Lcom/htc/camera/actionscreen/a;
.super Lcom/htc/camera/component/cm;
.source "ActionScreenSelector.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 18
    const-string v0, "Action Screen Selector"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 31
    invoke-virtual {p0}, Lcom/htc/camera/actionscreen/a;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 39
    :goto_0
    new-instance v1, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/actionscreen/ActionScreenSelector$1;-><init>(Lcom/htc/camera/actionscreen/a;Lcom/htc/camera/actionscreen/ActionScreen;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/actionscreen/a;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 49
    new-instance v0, Lcom/htc/camera/actionscreen/ActionScreenSelector$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/actionscreen/ActionScreenSelector$2;-><init>(Lcom/htc/camera/actionscreen/a;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/actionscreen/a;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 57
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/htc/camera/actionscreen/RequestActionScreen;

    invoke-direct {v0, v1}, Lcom/htc/camera/actionscreen/RequestActionScreen;-><init>(Lcom/htc/camera/HTCCamera;)V

    goto :goto_0
.end method
