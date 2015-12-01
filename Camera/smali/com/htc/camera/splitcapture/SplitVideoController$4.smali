.class Lcom/htc/camera/splitcapture/SplitVideoController$4;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final synthetic val$finalPath:Lcom/htc/camera/io/Path;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/io/Path;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->val$finalPath:Lcom/htc/camera/io/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController$4;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 376
    return-void
.end method
