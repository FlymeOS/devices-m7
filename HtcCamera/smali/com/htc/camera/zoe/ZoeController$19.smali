.class Lcom/htc/camera/zoe/ZoeController$19;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$3300(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$3300(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    if-ne v0, v1, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$3302(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 2313
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$3600(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setupAutoFocusCallbacks() - Zoe video snapshot focus finished"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$19;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->videoSnapshotTakePicture()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$3500(Lcom/htc/camera/zoe/ZoeController;)V

    .line 2317
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 2304
    check-cast p3, Lcom/htc/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeController$19;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method
