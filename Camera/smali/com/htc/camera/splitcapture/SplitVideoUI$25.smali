.class Lcom/htc/camera/splitcapture/SplitVideoUI$25;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$25;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$25;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchPreviewSurfaceLocationGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
