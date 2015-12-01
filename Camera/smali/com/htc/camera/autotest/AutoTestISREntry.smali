.class public Lcom/htc/camera/autotest/AutoTestISREntry;
.super Landroid/view/View;
.source "AutoTestISREntry.java"

# interfaces
.implements Lcom/htc/lib1/autotest/middleware/ISREntry;


# instance fields
.field private mActivity:Lcom/htc/camera/HTCCamera;

.field private mController:Lcom/htc/camera/autotest/AutoTestCSRController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getSRController()Lcom/htc/lib1/autotest/middleware/CSRController;
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mController:Lcom/htc/camera/autotest/AutoTestCSRController;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/htc/camera/autotest/AutoTestCSRController;

    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mActivity:Lcom/htc/camera/HTCCamera;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/autotest/AutoTestCSRController;-><init>(Lcom/htc/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mController:Lcom/htc/camera/autotest/AutoTestCSRController;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mController:Lcom/htc/camera/autotest/AutoTestCSRController;

    return-object v0
.end method

.method public setActivity(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/camera/autotest/AutoTestISREntry;->mActivity:Lcom/htc/camera/HTCCamera;

    .line 22
    return-void
.end method
