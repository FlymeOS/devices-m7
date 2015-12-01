.class Lcom/htc/camera/splitcapture/SplitCaptureMode$20;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$20;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$20;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1149
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$20;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1144
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1134
    return-void
.end method
