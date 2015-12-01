.class Lcom/htc/camera/viewfinder/GLViewFinder$51;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 3182
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$51;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$51;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4002(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;)Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 3187
    return-void
.end method
