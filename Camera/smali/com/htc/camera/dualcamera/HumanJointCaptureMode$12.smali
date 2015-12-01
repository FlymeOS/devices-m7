.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 616
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method
