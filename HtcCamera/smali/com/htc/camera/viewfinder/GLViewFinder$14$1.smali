.class Lcom/htc/camera/viewfinder/GLViewFinder$14$1;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$14;

.field final synthetic val$handle:Lcom/htc/camera/CloseableHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$14;Lcom/htc/camera/CloseableHandle;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$14;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;->val$handle:Lcom/htc/camera/CloseableHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$14;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$14;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$14$1;->val$handle:Lcom/htc/camera/CloseableHandle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->enablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$3200(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V

    .line 1082
    return-void
.end method
