.class public Lcom/htc/camera/preferences/i;
.super Lcom/htc/camera/preferences/PreferenceUpgradeWorker;
.source "Sense65PreferenceUpgradeWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const v0, 0x13305ba

    const v1, 0x13352b5

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;-><init>(II)V

    .line 19
    return-void
.end method


# virtual methods
.method public upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "pref_camera_review_duration_main"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "pref_camera_review_duration_front"

    aput-object v2, v1, v0

    .line 31
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 33
    aget-object v2, v1, v0

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    const-string v3, "no_limit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    aget-object v2, v1, v0

    sget-object v3, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->serializeToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
