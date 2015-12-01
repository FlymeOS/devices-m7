.class Lcom/htc/camera/zoe/ZoeController$5;
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
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$5;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$5;->this$0:Lcom/htc/camera/zoe/ZoeController;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$500(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    .line 1135
    return-void
.end method
