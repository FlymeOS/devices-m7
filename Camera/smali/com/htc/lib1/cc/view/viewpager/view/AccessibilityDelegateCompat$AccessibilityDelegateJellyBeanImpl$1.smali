.class Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/view/h;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/view/c;

.field final synthetic val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/view/c;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->this$0:Lcom/htc/lib1/cc/view/viewpager/view/c;

    iput-object p2, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 232
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    new-instance v1, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 238
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 243
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 254
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;->val$compat:Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 259
    return-void
.end method
