.class Lcom/htc/camera/component/ZoomBar$6;
.super Ljava/lang/Object;
.source "ZoomBar.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$6;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
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
    .line 288
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$6;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$500(Lcom/htc/camera/component/ZoomBar;)V

    .line 289
    return-void
.end method
