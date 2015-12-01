.class Lcom/htc/camera/component/CaptureUIBlockManager;
.super Lcom/htc/camera/component/cm;
.source "CaptureUIBlockManager.java"

# interfaces
.implements Lcom/htc/camera/w;


# instance fields
.field private final isCaptureUIBlocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ReleaseBlocksRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "Capture-UI Block Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/htc/camera/component/CaptureUIBlockManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CaptureUIBlockManager$1;-><init>(Lcom/htc/camera/component/CaptureUIBlockManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->disableFakeUIRotation()V

    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->disableUIRotationChangeNotification()V

    .line 65
    const-string v0, "CaptureUIBlockManager.IsCaptureUIBlocked"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    .line 66
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CaptureUIBlockManager;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->releaseSoftBlocks()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CaptureUIBlockManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private releaseSoftBlocks()V
    .locals 7

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;

    .line 154
    iget v0, v4, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks() - Release block \'"

    iget-object v2, v4, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;->name:Ljava/lang/String;

    const-string v3, "\'["

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    :goto_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSoftBlocks() - Block \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is still active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method public blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI(\'"

    const-string v3, "\', "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->threadAccessCheck()V

    .line 80
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    move-object v0, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - Block capture UI after pausing activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_3
    new-instance v0, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;-><init>(Lcom/htc/camera/component/CaptureUIBlockManager;Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "blockCaptureUI() - New handle ID : "

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "blockCaptureUI() - Handle count : "

    iget-object v3, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 100
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 117
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 118
    return-void
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 134
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CaptureUIBlockManager$2;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/CaptureUIBlockManager$2;-><init>(Lcom/htc/camera/component/CaptureUIBlockManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public unblockCaptureUI(Lcom/htc/camera/Handle;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Null handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return v0

    .line 181
    :cond_0
    instance-of v1, p1, Lcom/htc/camera/component/CaptureUIBlockManager$BlockHandle;

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->threadAccessCheck()V

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureUIBlockManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI(\'"

    iget-object v3, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "])"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Handle count : "

    iget-object v3, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/htc/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
