.class Lcom/htc/camera/manualcapture/ToggleSeekBarButton$2;
.super Ljava/lang/Object;
.source "ToggleSeekBarButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$2;->this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$2;->this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;

    # invokes: Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->toggleSeekBar()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->access$100(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
