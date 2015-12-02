.class Lcom/htc/camera/viewfinder/GLViewFinder$42;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$rendererHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$42;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$42;->val$rendererHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$42;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$42;->val$rendererHandle:Lcom/htc/camera/Handle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->removePreviewFilterRendererInternal(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7600(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    .line 2663
    return-void
.end method
