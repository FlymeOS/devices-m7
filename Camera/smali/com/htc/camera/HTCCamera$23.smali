.class Lcom/htc/camera/HTCCamera$23;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$23;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1781
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$23;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1786
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "HTCCamera takePicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    :cond_0
    return-void
.end method
