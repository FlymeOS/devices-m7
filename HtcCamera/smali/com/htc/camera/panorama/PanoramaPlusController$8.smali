.class Lcom/htc/camera/panorama/PanoramaPlusController$8;
.super Ljava/lang/Object;
.source "PanoramaPlusController.java"

# interfaces
.implements Lcom/htc/camera/panorama/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureReceived(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$8;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->onFinalImageReceived([B)V
    invoke-static {v0, p2}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$1200(Lcom/htc/camera/panorama/PanoramaPlusController;[B)V

    .line 238
    return-void
.end method
