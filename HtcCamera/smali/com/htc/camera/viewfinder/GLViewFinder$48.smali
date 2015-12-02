.class Lcom/htc/camera/viewfinder/GLViewFinder$48;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V
    .locals 0

    .prologue
    .line 3032
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$48;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$48;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$48;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$48;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->setPreviewSourceRectInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8000(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    .line 3037
    return-void
.end method
