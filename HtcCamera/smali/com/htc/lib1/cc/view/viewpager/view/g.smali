.class Lcom/htc/lib1/cc/view/viewpager/view/g;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompatJellyBean.java"


# direct methods
.method public static a(Lcom/htc/lib1/cc/view/viewpager/view/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompatJellyBean$1;-><init>(Lcom/htc/lib1/cc/view/viewpager/view/h;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 105
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
