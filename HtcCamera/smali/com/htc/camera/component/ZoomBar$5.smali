.class Lcom/htc/camera/component/ZoomBar$5;
.super Ljava/lang/Object;
.source "ZoomBar.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$5;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 1
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
    .line 258
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$5;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$500(Lcom/htc/camera/component/ZoomBar;)V

    .line 259
    return-void
.end method
