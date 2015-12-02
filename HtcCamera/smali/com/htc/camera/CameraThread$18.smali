.class Lcom/htc/camera/CameraThread$18;
.super Lcom/htc/camera/event/Event;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/event/Event",
        "<",
        "Lcom/htc/camera/imaging/RawImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3075
    iput-object p1, p0, Lcom/htc/camera/CameraThread$18;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/htc/camera/event/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/a",
            "<-",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3080
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread$18;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3082
    invoke-super {p0, p1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 3090
    :goto_0
    return-void

    .line 3085
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 3088
    iget-object v0, p0, Lcom/htc/camera/CameraThread$18;->TAG:Ljava/lang/String;

    const-string v1, "New event handler for \'"

    iget-object v2, p0, Lcom/htc/camera/CameraThread$18;->name:Ljava/lang/String;

    const-string v3, "\', setup preview call-back"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3089
    iget-object v0, p0, Lcom/htc/camera/CameraThread$18;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->setupPreviewCallback()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$1900(Lcom/htc/camera/CameraThread;)V

    goto :goto_0
.end method

.method public removeHandler(Lcom/htc/camera/event/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/a",
            "<-",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3096
    invoke-super {p0, p1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3097
    const/4 v0, 0x0

    .line 3105
    :goto_0
    return v0

    .line 3100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread$18;->hasHandlers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/htc/camera/CameraThread$18;->TAG:Ljava/lang/String;

    const-string v1, "No more event handlers for \'"

    iget-object v2, p0, Lcom/htc/camera/CameraThread$18;->name:Ljava/lang/String;

    const-string v3, "\', clear preview call-back"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3103
    iget-object v0, p0, Lcom/htc/camera/CameraThread$18;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->clearPreviewCallback()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$2000(Lcom/htc/camera/CameraThread;)V

    .line 3105
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
