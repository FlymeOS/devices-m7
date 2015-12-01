.class Lcom/htc/lib1/cc/view/viewpager/view/c;
.super Lcom/htc/lib1/cc/view/viewpager/view/a;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/viewpager/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2

    .prologue
    .line 278
    invoke-static {p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/g;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_0

    .line 281
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;-><init>(Lcom/htc/lib1/cc/view/viewpager/view/c;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/view/g;->a(Lcom/htc/lib1/cc/view/viewpager/view/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 289
    invoke-static {p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/viewpager/view/g;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
