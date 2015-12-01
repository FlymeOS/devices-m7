.class Lcom/htc/camera/bi/SwipeCameraStatisticController$2;
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
    .line 61
    iput-object p1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

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
    .line 65
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    # getter for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mIsSliding:Z
    invoke-static {v0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$000(Lcom/htc/camera/bi/SwipeCameraStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    # operator++ for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromSliding:I
    invoke-static {v0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$108(Lcom/htc/camera/bi/SwipeCameraStatisticController;)I

    .line 68
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mIsSliding:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$002(Lcom/htc/camera/bi/SwipeCameraStatisticController;Z)Z

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$302(Lcom/htc/camera/bi/SwipeCameraStatisticController;Z)Z

    .line 75
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;->this$0:Lcom/htc/camera/bi/SwipeCameraStatisticController;

    # operator++ for: Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromMenu:I
    invoke-static {v0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->access$208(Lcom/htc/camera/bi/SwipeCameraStatisticController;)I

    goto :goto_0
.end method
