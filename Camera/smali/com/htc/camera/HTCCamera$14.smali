.class Lcom/htc/camera/HTCCamera$14;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$14;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1452
    iget-object v2, p0, Lcom/htc/camera/HTCCamera$14;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/htc/camera/HTCCamera;->mIsTouchingNavigationBarStub:Z
    invoke-static {v2, v0}, Lcom/htc/camera/HTCCamera;->access$2502(Lcom/htc/camera/HTCCamera;Z)Z

    .line 1453
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$14;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$2200(Lcom/htc/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$14;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/camera/HTCCamera;->access$2200(Lcom/htc/camera/HTCCamera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1454
    return v1

    .line 1452
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
