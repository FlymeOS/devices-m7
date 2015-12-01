.class Lcom/htc/camera/splitcapture/SplitPhotoUI$2;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
