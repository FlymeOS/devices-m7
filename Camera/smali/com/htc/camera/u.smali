.class public abstract Lcom/htc/camera/u;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IBubbleToastManager.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract closeBubbleToast(Lcom/htc/camera/Handle;)V
.end method

.method public final showBubbleToast(I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/camera/u;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showBubbleToast(II)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/camera/u;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    invoke-virtual {p0, v0, v1, p2}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showBubbleToast(Landroid/view/View;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/u;->showBubbleToast(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showBubbleToast(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;
.end method

.method public final showBubbleToast(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public final showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;
    .locals 5

    .prologue
    const v3, 0x7f0a0163

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/u;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/camera/u;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0902a7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/htc/camera/u;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a016c

    invoke-virtual {p0, v2}, Lcom/htc/camera/u;->getDimension(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/htc/camera/u;->getDimension(I)I

    move-result v3

    const v4, 0x7f0a016b

    invoke-virtual {p0, v4}, Lcom/htc/camera/u;->getDimension(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/camera/u;->showBubbleToast(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method
