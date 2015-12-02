.class public final Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "GLViewFinder.java"


# instance fields
.field public final calculator:Lcom/htc/camera/ui/a;

.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method public constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/ui/a;)V
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    .line 368
    const-string v0, "PreviewBoundsCalculator"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 369
    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;->calculator:Lcom/htc/camera/ui/a;

    .line 370
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->removePreviewBoundsCalculator(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V

    .line 376
    return-void
.end method
