.class Lcom/htc/lib1/cc/view/viewpager/view/af;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/view/ah;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method
