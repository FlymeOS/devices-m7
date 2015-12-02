.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 525
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method
