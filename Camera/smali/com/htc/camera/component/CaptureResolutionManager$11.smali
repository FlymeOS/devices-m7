.class Lcom/htc/camera/component/CaptureResolutionManager$11;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/SessionHandle;

.field final synthetic val$provider:Lcom/htc/camera/am;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/SessionHandle;Lcom/htc/camera/am;I)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$handle:Lcom/htc/camera/SessionHandle;

    iput-object p3, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$provider:Lcom/htc/camera/am;

    iput p4, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$handle:Lcom/htc/camera/SessionHandle;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$provider:Lcom/htc/camera/am;

    iget v3, p0, Lcom/htc/camera/component/CaptureResolutionManager$11;->val$flags:I

    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/CaptureResolutionManager;->access$1200(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V

    .line 575
    return-void
.end method
