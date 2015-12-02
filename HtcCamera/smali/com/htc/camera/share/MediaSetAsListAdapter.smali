.class public Lcom/htc/camera/share/MediaSetAsListAdapter;
.super Lcom/htc/camera/share/MediaShareListAdapterBase;
.source "MediaSetAsListAdapter.java"


# instance fields
.field private final m_MediaInfo:Lcom/htc/camera/media/MediaInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/share/MediaShareListAdapterBase;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/htc/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 35
    invoke-direct {p0}, Lcom/htc/camera/share/MediaSetAsListAdapter;->initializeAppInfos()V

    .line 36
    return-void
.end method

.method private initializeAppInfos()V
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/share/MediaSetAsListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/htc/camera/share/MediaSetAsListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string v3, "com.htc.contacts"

    const-string v4, "com.htc.contacts.AttachImage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/htc/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v3}, Lcom/htc/camera/media/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-static {v2, v3}, Lcom/htc/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-static {v2, v3}, Lcom/htc/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.photoenhancer.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v3, "content://media/external/images/media/58"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v3, "mimeType"

    const-string v4, "image/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.photoenhancer.Wallpaper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "com.htc.photoenhancer.SET_WALLPAPER"

    invoke-static {v1, v2}, Lcom/htc/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    return-void
.end method


# virtual methods
.method public final createIntent(I)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/camera/share/MediaSetAsListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/share/ExternalAppInfo;

    .line 45
    iget-object v1, v0, Lcom/htc/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    iget-object v1, p0, Lcom/htc/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/htc/lib1/mediamanager/i;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/htc/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 53
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v0, Lcom/htc/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const/high16 v0, 0x1000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/htc/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    const-string v0, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "FILE_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    :cond_1
    return-object v3
.end method
