.class final Lcom/htc/camera/panorama/PanoramaPlusEngine$3;
.super Ljava/lang/Object;
.source "PanoramaPlusEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;->val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iput p2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;->val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;->val$progress:I

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusEngine;->stitchingProgressCallback(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->access$200(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V

    .line 464
    return-void
.end method
