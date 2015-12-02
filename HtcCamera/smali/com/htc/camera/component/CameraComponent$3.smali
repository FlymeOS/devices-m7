.class Lcom/htc/camera/component/CameraComponent$3;
.super Ljava/lang/Object;
.source "CameraComponent.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraComponent;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraComponent;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent$3;->this$0:Lcom/htc/camera/component/CameraComponent;

    iput-object p2, p0, Lcom/htc/camera/component/CameraComponent$3;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/camera/component/CameraComponent$3;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 809
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 798
    return-void
.end method
