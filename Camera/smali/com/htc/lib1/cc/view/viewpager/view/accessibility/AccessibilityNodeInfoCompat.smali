.class public Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# static fields
.field private static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 706
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/c;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/c;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    .line 712
    :goto_0
    return-void

    .line 707
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 708
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/a;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/a;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    goto :goto_0

    .line 710
    :cond_1
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/d;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/d;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 933
    return-void
.end method


# virtual methods
.method public addAction(I)V
    .locals 2

    .prologue
    .line 1146
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;->a(Ljava/lang/Object;I)V

    .line 1147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1735
    if-ne p0, p1, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return v0

    .line 1738
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1739
    goto :goto_0

    .line 1741
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1742
    goto :goto_0

    .line 1744
    :cond_3
    check-cast p1, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1745
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1746
    iget-object v2, p1, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1747
    goto :goto_0

    .line 1749
    :cond_4
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1750
    goto :goto_0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1666
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1667
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    .prologue
    .line 1618
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/b;->a(Ljava/lang/Object;Z)V

    .line 1619
    return-void
.end method
