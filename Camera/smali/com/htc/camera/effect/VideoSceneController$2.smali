.class Lcom/htc/camera/effect/VideoSceneController$2;
.super Ljava/lang/Object;
.source "VideoSceneController.java"

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
.field final synthetic this$0:Lcom/htc/camera/effect/VideoSceneController;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/VideoSceneController;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneController$2;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0
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
    .line 122
    return-void
.end method
