.class final Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# instance fields
.field final synthetic val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/view/f;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/f;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 77
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/f;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/f;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 82
    return-void
.end method
