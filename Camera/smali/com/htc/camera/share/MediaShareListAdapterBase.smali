.class public abstract Lcom/htc/camera/share/MediaShareListAdapterBase;
.super Landroid/widget/BaseAdapter;
.source "MediaShareListAdapterBase.java"


# instance fields
.field private final m_AppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is NULL in MediaShareListAdapterBase()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected final getAppInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/share/ExternalAppInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 91
    new-instance p2, Lcom/htc/camera/widget/AppListItem;

    invoke-virtual {p0}, Lcom/htc/camera/share/MediaShareListAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/htc/camera/widget/AppListItem;-><init>(Landroid/content/Context;)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/share/ExternalAppInfo;

    .line 97
    invoke-virtual {p0}, Lcom/htc/camera/share/MediaShareListAdapterBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    iget-object v2, v0, Lcom/htc/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/camera/widget/AppListItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, v0, Lcom/htc/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/camera/widget/AppListItem;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-object p2

    .line 93
    :cond_0
    check-cast p2, Lcom/htc/camera/widget/AppListItem;

    goto :goto_0
.end method
