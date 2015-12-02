.class Lcom/htc/lib1/cc/view/viewpager/view/x;
.super Lcom/htc/lib1/cc/view/viewpager/view/w;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/viewpager/view/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p2}, Lcom/htc/lib1/cc/view/viewpager/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/lib1/cc/view/viewpager/view/ad;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 261
    return-void
.end method
