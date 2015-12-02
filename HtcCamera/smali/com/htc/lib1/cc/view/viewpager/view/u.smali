.class Lcom/htc/lib1/cc/view/viewpager/view/u;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/view/aa;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 187
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public a(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/viewpager/view/u;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/viewpager/view/u;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 176
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method
