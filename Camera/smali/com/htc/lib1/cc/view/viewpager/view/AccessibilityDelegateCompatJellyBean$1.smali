.class final Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatJellyBean.java"


# instance fields
.field final synthetic val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/view/h;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/h;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 58
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/h;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/h;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 79
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/h;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/h;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 84
    return-void
.end method
