.class Lcom/htc/camera/component/AutoFaceCaptureController$2;
.super Ljava/lang/Object;
.source "AutoFaceCaptureController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$2;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureController;->onJpegCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$000(Lcom/htc/camera/component/AutoFaceCaptureController;I)V

    .line 192
    return-void
.end method
