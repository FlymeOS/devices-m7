.class final Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# instance fields
.field final synthetic val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;->createAccessibilityNodeInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/j;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
