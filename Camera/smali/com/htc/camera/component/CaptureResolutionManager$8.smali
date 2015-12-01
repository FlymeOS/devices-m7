.class Lcom/htc/camera/component/CaptureResolutionManager$8;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->val$handle:Lcom/htc/camera/Handle;

    iput p3, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->val$handle:Lcom/htc/camera/Handle;

    iget v2, p0, Lcom/htc/camera/component/CaptureResolutionManager$8;->val$flags:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 343
    return-void
.end method
