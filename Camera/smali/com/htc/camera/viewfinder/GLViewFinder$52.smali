.class Lcom/htc/camera/viewfinder/GLViewFinder$52;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$releasePreviewAdapter:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 3222
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$52;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-boolean p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$52;->val$releasePreviewAdapter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$52;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-boolean v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$52;->val$releasePreviewAdapter:Z

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onRendererThreadSuspended(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8200(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 3227
    return-void
.end method
