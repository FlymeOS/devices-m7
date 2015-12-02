.class Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwitchCameraSlidingUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method private constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/component/SwitchCameraSlidingUI$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    float-to-int v1, p3

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$102(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)I

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$100(Lcom/htc/camera/component/SwitchCameraSlidingUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->updateMaxSlidingMoving(I)V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$100(Lcom/htc/camera/component/SwitchCameraSlidingUI;)I

    move-result v1

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->updateSlidingDistance(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$200(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)V

    .line 148
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->changeStatusBySliding()V
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    float-to-int v1, p4

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$102(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)I

    goto :goto_0
.end method
