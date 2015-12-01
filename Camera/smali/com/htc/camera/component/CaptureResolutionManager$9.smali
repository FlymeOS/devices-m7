.class Lcom/htc/camera/component/CaptureResolutionManager$9;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;

.field final synthetic val$resolution:Lcom/htc/camera/Resolution;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$9;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iput-object p2, p0, Lcom/htc/camera/component/CaptureResolutionManager$9;->val$resolution:Lcom/htc/camera/Resolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$9;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager$9;->val$resolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->setPhotoResolution(Lcom/htc/camera/Resolution;)V

    .line 419
    return-void
.end method
