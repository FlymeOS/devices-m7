.class public final Lcom/htc/camera/share/ExternalAppInfo;
.super Ljava/lang/Object;
.source "ExternalAppInfo.java"


# instance fields
.field public final action:Ljava/lang/String;

.field public final isFake:Z

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/htc/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/htc/camera/share/ExternalAppInfo;->isFake:Z

    .line 28
    iput-object p1, p0, Lcom/htc/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 29
    return-void
.end method

.method public static fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 40
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 43
    new-instance v4, Lcom/htc/camera/share/ExternalAppInfo;

    invoke-direct {v4, v0, p1}, Lcom/htc/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_0
    return-object v2
.end method
