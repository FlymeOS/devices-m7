.class public Lcom/htc/camera/bi/SplitVideoStatisticController;
.super Lcom/htc/camera/component/cm;
.source "SplitVideoStatisticController.java"


# instance fields
.field private mHasChanged:Z

.field private mRetakeHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHistory:[Ljava/lang/Integer;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "SplitVideoStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/SplitVideoStatisticController;)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/SplitVideoStatisticController;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/bi/SplitVideoStatisticController;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/camera/bi/SplitVideoStatisticController;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 46
    invoke-virtual {p0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->loadFromPreference()V

    .line 51
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitCaptureController;->EVENT_SPLIT_CAPTRUE_FINISHED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/bi/SplitVideoStatisticController$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/bi/SplitVideoStatisticController$1;-><init>(Lcom/htc/camera/bi/SplitVideoStatisticController;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/splitcapture/ISplitVideoController;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 80
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/SplitVideoStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/SplitVideoStatisticController$2;-><init>(Lcom/htc/camera/bi/SplitVideoStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 96
    return-void
.end method

.method protected loadFromPreference()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 104
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 105
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 106
    invoke-virtual {p0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 107
    const-string v2, "pref_bi_splitcapture_video_history"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 113
    :try_start_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 117
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    iget-object v4, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    .line 119
    iget-object v3, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 121
    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 124
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 130
    iget-object v5, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    return-void
.end method

.method protected saveToPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v4, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 166
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mSwipeHistory:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 167
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mRetakeHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 169
    invoke-virtual {p0}, Lcom/htc/camera/bi/SplitVideoStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 170
    const-string v2, "pref_bi_splitcapture_video_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-boolean v5, p0, Lcom/htc/camera/bi/SplitVideoStatisticController;->mHasChanged:Z

    .line 174
    return-void
.end method
