.class final Lcom/htc/lib1/cc/view/tabbar/d;
.super Ljava/lang/Object;
.source "TabBarUtils.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    # setter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->overlayColor:I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$002(I)I

    .line 43
    const/4 v0, 0x0

    # setter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I
    invoke-static {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$102([I)[I

    .line 44
    return-void
.end method
