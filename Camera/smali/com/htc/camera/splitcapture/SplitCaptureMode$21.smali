.class Lcom/htc/camera/splitcapture/SplitCaptureMode$21;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$21;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$21;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$21;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1306
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1301
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1298
    return-void
.end method
