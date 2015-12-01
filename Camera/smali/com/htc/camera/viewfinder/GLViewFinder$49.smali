.class Lcom/htc/camera/viewfinder/GLViewFinder$49;
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
    .line 3065
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    iget v1, v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    iget v2, v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    iget v3, v3, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder$49;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    iget v4, v4, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewSourceRectChanged(FFFF)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2800(Lcom/htc/camera/viewfinder/GLViewFinder;FFFF)V

    .line 3070
    return-void
.end method
