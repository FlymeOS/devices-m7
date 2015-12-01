.class public final Lcom/htc/camera/preferences/g;
.super Lcom/htc/camera/preferences/PreferenceUpgradeWorker;
.source "Sense40PlusPreferenceUpgradeWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const v0, 0x132b677

    const v1, 0x133042b

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;-><init>(II)V

    .line 21
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/preferences/g;->TAG:Ljava/lang/String;

    const-string v1, "getAsInt() - Invalid number format"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    .line 36
    const/high16 v0, -0x40800000    # -1.0f

    .line 45
    :goto_1
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 38
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 40
    const/4 v0, 0x0

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 42
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 44
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 69
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-wide v4, 0x3ff553f7ced91687L    # 1.333

    sub-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    .line 80
    const-string v1, "_4_3_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x78

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/Resolution;->getResolution(Ljava/lang/String;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 81
    :cond_2
    const-wide v4, 0x3ffaac083126e979L    # 1.667

    sub-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    .line 82
    const-string v1, "_5_3_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :cond_3
    const-wide v4, 0x3ffc72b020c49ba6L    # 1.778

    sub-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    .line 84
    const-string v1, "_16_9_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    :cond_4
    const-wide v4, 0x3ff999999999999aL    # 1.6

    sub-double v1, v4, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v6

    if-gtz v1, :cond_0

    .line 86
    const-string v1, "_16_10_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "no_review"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :cond_2
    const-string v0, "0s"

    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
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
    .line 126
    const-string v0, "pref_camera_brightness"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 129
    const-string v0, "pref_camera_contrast"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 132
    const-string v0, "pref_panorama_resolution"

    const-string v1, "PHOTO"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 135
    const-string v0, "pref_capture_resolution_photo_main"

    const-string v1, "PHOTO"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 136
    const-string v0, "pref_capture_resolution_photo_2nd"

    const-string v1, "PHOTO"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 137
    const-string v0, "pref_capture_resolution_photo_3D"

    const-string v1, "PHOTO"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 140
    const-string v0, "pref_camera_review_duration"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->b(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 143
    const-string v0, "pref_camera_saturation"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 146
    const-string v0, "pref_camera_self_timer"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->b(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 147
    const-string v0, "pref_camera_self_timer"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "pref_camera_self_timer_main"

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_0
    const-string v0, "pref_camera_shaprness"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/preferences/g;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 153
    return-void
.end method
