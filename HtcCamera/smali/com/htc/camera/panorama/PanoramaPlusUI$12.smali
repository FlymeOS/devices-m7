.class Lcom/htc/camera/panorama/PanoramaPlusUI$12;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$12;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2079
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2087
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2084
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$12;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2500(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    goto :goto_0

    .line 2079
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
