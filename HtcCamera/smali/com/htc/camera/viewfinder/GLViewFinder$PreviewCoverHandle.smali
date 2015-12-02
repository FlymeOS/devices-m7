.class final Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "GLViewFinder.java"


# instance fields
.field public final flags:I

.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method public constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;I)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    .line 342
    const-string v0, "PreviewCover"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 343
    iput p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;->flags:I

    .line 344
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCover(Lcom/htc/camera/Handle;)V
    invoke-static {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2200(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    .line 350
    return-void
.end method
