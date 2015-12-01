.class Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$2;
.super Ljava/lang/Object;
.source "LaunchModeFromGridViewStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

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
    .line 119
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mIsSliding:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$102(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Z)Z

    .line 120
    return-void
.end method
