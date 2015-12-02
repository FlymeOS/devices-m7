.class Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/view/f;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/view/a;

.field final synthetic val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/view/a;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->this$0:Lcom/htc/lib1/cc/view/viewpager/view/a;

    iput-object p2, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 141
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    new-instance v1, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 147
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 152
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 163
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 168
    return-void
.end method
