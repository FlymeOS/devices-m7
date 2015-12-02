.class Lcom/htc/camera/viewfinder/GLViewFinder$38$2;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

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
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

.field final synthetic val$previewStartedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;->val$previewStartedRunnable:Ljava/lang/Runnable;

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
    .line 1822
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;->val$previewStartedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1823
    return-void
.end method
