.class public Lcom/htc/lib1/cc/view/tabbar/e;
.super Ljava/lang/Object;
.source "TabBarUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 281
    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->checkResources(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$400(Landroid/content/Context;)V

    .line 283
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$100()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method
