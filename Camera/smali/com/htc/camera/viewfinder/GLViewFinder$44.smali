.class Lcom/htc/camera/viewfinder/GLViewFinder$44;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 2905
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->val$handle:Lcom/htc/camera/Handle;

    iput p3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->val$handle:Lcom/htc/camera/Handle;

    iget v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$44;->val$flags:I

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->restorePreviewSourceRectInternal(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7800(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V

    .line 2910
    return-void
.end method
