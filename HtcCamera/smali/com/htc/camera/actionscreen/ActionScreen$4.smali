.class Lcom/htc/camera/actionscreen/ActionScreen$4;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/ActionScreen;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    new-instance v1, Lcom/htc/camera/actionscreen/ActionScreen$4$1;

    invoke-direct {v1, p0, p3}, Lcom/htc/camera/actionscreen/ActionScreen$4$1;-><init>(Lcom/htc/camera/actionscreen/ActionScreen$4;Lcom/htc/camera/CaptureEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$4;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->access$600(Lcom/htc/camera/actionscreen/ActionScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 233
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/actionscreen/ActionScreen$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
