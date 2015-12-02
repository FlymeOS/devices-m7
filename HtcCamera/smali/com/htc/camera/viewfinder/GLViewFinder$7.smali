.class Lcom/htc/camera/viewfinder/GLViewFinder$7;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$7;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$7;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$7;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$7;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->addPreviewFilterRendererInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2500(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V

    .line 578
    return-void
.end method
