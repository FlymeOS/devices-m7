.class public final Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "GLViewFinder.java"


# instance fields
.field public final bottom:F

.field public final left:F

.field public final right:F

.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field public final top:F


# direct methods
.method public constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;FFFF)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    .line 417
    const-string v0, "PreviewSourceRectangle"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 418
    iput p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    .line 419
    iput p3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    .line 420
    iput p4, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    .line 421
    iput p5, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    .line 422
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->restorePreviewSourceRect(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V

    .line 428
    return-void
.end method
