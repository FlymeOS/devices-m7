.class public Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;
.super Lcom/htc/camera/component/cm;
.source "LaunchModeFromGridViewStatisticController.java"


# static fields
.field private static COUNT_OF_MODE:I


# instance fields
.field private mHasChanged:Z

.field protected mIsResetToDefault:Z

.field private mIsSliding:Z

.field protected mModeHistoryTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x9

    sput v0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->COUNT_OF_MODE:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "LaunchModeFromGridViewStatisticController"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 37
    iput-boolean v2, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mIsResetToDefault:Z

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mIsSliding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mHasChanged:Z

    return v0
.end method

.method private updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    if-nez v0, :cond_0

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 149
    :cond_0
    iget-boolean v1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mIsSliding:Z

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mHasChanged:Z

    .line 156
    return-void

    .line 152
    :cond_1
    iput-boolean v2, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mIsSliding:Z

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 70
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->loadFromPreference()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;-><init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 114
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$2;-><init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 124
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$3;-><init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 142
    return-void
.end method

.method protected loadFromPreference()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 164
    const-string v2, "pref_bi_launch_mode_from_gridview_history"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->TAG:Ljava/lang/String;

    const-string v3, "loadFromPreference()  history != null"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :try_start_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 174
    array-length v2, v0

    .line 175
    :goto_0
    if-ge v1, v2, :cond_1

    .line 176
    iget-object v3, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arraysize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    aget-object v3, v0, v1

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 179
    iget-object v4, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    :goto_1
    sget v0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->COUNT_OF_MODE:I

    if-ge v1, v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_1
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference()  initialize mModeHistoryTable"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 197
    :goto_2
    sget v2, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->COUNT_OF_MODE:I

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected saveToPreference()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v3

    move v0, v1

    .line 213
    :goto_0
    if-ge v0, v3, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 223
    iget-object v2, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mModeHistoryTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 225
    invoke-virtual {p0}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v2

    .line 227
    const-string v3, "pref_bi_launch_mode_from_gridview_history"

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 230
    iput-boolean v1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->mHasChanged:Z

    .line 231
    return-void
.end method
