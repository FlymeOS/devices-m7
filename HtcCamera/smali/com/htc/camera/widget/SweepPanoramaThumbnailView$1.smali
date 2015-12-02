.class Lcom/htc/camera/widget/SweepPanoramaThumbnailView$1;
.super Landroid/os/Handler;
.source "SweepPanoramaThumbnailView.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$1;->this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$1;->this$0:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    # invokes: Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->updateSpeedIndicatorCurrentPosition()V
    invoke-static {v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->access$000(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
