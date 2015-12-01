.class Lcom/htc/camera/splitcapture/SplitCaptureMode$5;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$5;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->onSyncAsyncButtonPressed()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$200(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 150
    return-void
.end method
