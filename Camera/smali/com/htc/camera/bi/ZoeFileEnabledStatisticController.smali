.class public Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;
.super Lcom/htc/camera/component/cm;
.source "ZoeFileEnabledStatisticController.java"


# instance fields
.field private mHasChanged:Z

.field private mZoeHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "ZoeFileEnabledStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 46
    invoke-virtual {p0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->loadFromPreference()V

    .line 51
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;-><init>(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 122
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$2;-><init>(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 140
    return-void
.end method

.method protected loadFromPreference()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 148
    invoke-virtual {p0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 149
    const-string v2, "pref_bi_zoe_file_enabled_history"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 154
    :try_start_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 157
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 160
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 161
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 163
    iget-object v5, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_1
    return-void
.end method

.method protected saveToPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v3, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 192
    invoke-virtual {p0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 194
    const-string v2, "pref_bi_zoe_file_enabled_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 196
    iput-boolean v4, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z

    .line 197
    return-void
.end method
