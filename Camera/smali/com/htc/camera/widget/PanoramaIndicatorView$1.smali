.class Lcom/htc/camera/widget/PanoramaIndicatorView$1;
.super Landroid/os/Handler;
.source "PanoramaIndicatorView.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/PanoramaIndicatorView;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/htc/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/htc/camera/widget/PanoramaIndicatorView;

    # invokes: Lcom/htc/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V
    invoke-static {v0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->access$000(Lcom/htc/camera/widget/PanoramaIndicatorView;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/htc/camera/widget/PanoramaIndicatorView;

    # invokes: Lcom/htc/camera/widget/PanoramaIndicatorView;->updateOrientation()V
    invoke-static {v0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->access$100(Lcom/htc/camera/widget/PanoramaIndicatorView;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
