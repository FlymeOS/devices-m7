.class public Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 327
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 328
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/z;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/z;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    .line 340
    :goto_0
    return-void

    .line 329
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 330
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/y;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/y;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    goto :goto_0

    .line 331
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 332
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/x;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/x;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    goto :goto_0

    .line 333
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 334
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/w;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/w;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    goto :goto_0

    .line 335
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 336
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/v;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/v;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    goto :goto_0

    .line 338
    :cond_4
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/u;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/u;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    goto :goto_0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->b(Landroid/view/View;)V

    .line 548
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V
    .locals 1

    .prologue
    .line 511
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->a(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V

    .line 512
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->a(Landroid/view/View;I)V

    .line 629
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 716
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/ViewCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/aa;

    invoke-interface {v0, p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/view/aa;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 717
    return-void
.end method
