.class Lcom/htc/camera/panorama/PanoramaPlusController$9;
.super Ljava/lang/Object;
.source "PanoramaPlusController.java"

# interfaces
.implements Lcom/htc/camera/panorama/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->onStitchingProgressChanged(I)V
    invoke-static {v0, p2}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$1300(Lcom/htc/camera/panorama/PanoramaPlusController;I)V

    .line 246
    return-void
.end method
