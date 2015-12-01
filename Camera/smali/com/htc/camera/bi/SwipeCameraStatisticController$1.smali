.class Lcom/htc/camera/bi/SwipeCameraStatisticController$1;
.super Ljava/lang/Object;
.source "SwipeCameraStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/SwipeCameraStatisticController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$1;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

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
    .line 56
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$1;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mIsSliding:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$002(Lcom/htc/camera/bi/SwipeCameraStatisticController;Z)Z

    .line 57
    return-void
.end method
