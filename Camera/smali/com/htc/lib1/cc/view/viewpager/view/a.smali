.class Lcom/htc/lib1/cc/view/viewpager/view/a;
.super Lcom/htc/lib1/cc/view/viewpager/view/d;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/viewpager/view/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;-><init>(Lcom/htc/lib1/cc/view/viewpager/view/a;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a(Lcom/htc/lib1/cc/view/viewpager/view/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 207
    invoke-static {p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 208
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p3}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 175
    invoke-static {p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 201
    invoke-static {p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/viewpager/view/e;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 182
    invoke-static {p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/e;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 183
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 195
    invoke-static {p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/e;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    return-void
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 213
    invoke-static {p1, p2, p3}, Lcom/htc/lib1/cc/view/viewpager/view/e;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 214
    return-void
.end method
