.class final Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;
.super Lcom/htc/camera/Handle;
.source "CaptureUIBlockManager.java"


# instance fields
.field public final flags:I

.field final synthetic this$0:Lcom/htc/camera/component/CaptureUIBlockManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/CaptureUIBlockManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;->this$0:Lcom/htc/camera/component/CaptureUIBlockManager;

    .line 52
    invoke-direct {p0, p2}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 53
    iput p3, p0, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;->flags:I

    .line 54
    return-void
.end method
