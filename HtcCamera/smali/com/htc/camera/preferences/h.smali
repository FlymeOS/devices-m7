.class public Lcom/htc/camera/preferences/h;
.super Lcom/htc/camera/preferences/PreferenceUpgradeWorker;
.source "Sense50PreferenceUpgradeWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const v0, 0x133055d

    const v1, 0x13305ba

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;-><init>(II)V

    .line 19
    return-void
.end method


# virtual methods
.method public upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
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
    .line 28
    const-string v0, "pref_camera_image_ratio"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/PhotoSizeMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    const-string v1, "pref_photo_size_mode"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    :cond_0
    const-string v0, "pref_camera_review_duration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "pref_camera_review_duration_main"

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    :cond_1
    return-void

    .line 31
    :cond_2
    sget-object v0, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/PhotoSizeMode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
