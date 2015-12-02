.class Lcom/htc/camera/component/RecordingLimitController$4;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$4;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$4;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    new-instance v1, Lcom/htc/camera/component/RecordingLimitController$4$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/RecordingLimitController$4$1;-><init>(Lcom/htc/camera/component/RecordingLimitController$4;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RecordingLimitController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method
