.class public Lcom/htc/camera/component/TipsHelpController;
.super Lcom/htc/camera/component/CameraComponent;
.source "TipsHelpController.java"


# static fields
.field private static m_TopicList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/camera/component/TipsHelpController$CameraTopic;",
            "Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_PhotoCount:I

.field private m_PhotoTakenCount:I

.field private m_Settings:Lcom/htc/camera/CameraSettings;

.field private m_VideoRecordedCount:I

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    .line 101
    invoke-static {}, Lcom/htc/camera/component/TipsHelpController;->initTopicInfo()V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "TipsHelpController"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 110
    return-void
.end method

.method static synthetic access$004(Lcom/htc/camera/component/TipsHelpController;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoTakenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoTakenCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/camera/component/TipsHelpController;->checktoPromoteTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1104(Lcom/htc/camera/component/TipsHelpController;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_VideoRecordedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_VideoRecordedCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/TipsHelpController;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/camera/component/TipsHelpController;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/htc/camera/component/TipsHelpController;)I
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/effect/IEffectManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/camera/component/TipsHelpController;->checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/zoe/IZoeController;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    return-object v0
.end method

.method private checktoPromoteTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 284
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "promoteTopic() : didn\'t contain key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 302
    :goto_0
    return v0

    .line 290
    :cond_0
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mMode:Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoTakenCount:I

    move v1, v0

    .line 291
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/camera/component/TipsHelpController;->getTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)I

    move-result v4

    .line 292
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mThreshold:I
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1700(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)I

    move-result v0

    if-ge v1, v0, :cond_4

    move v0, v3

    .line 293
    :goto_2
    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq v4, v0, :cond_5

    .line 295
    :cond_1
    if-nez v4, :cond_2

    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    .line 296
    goto :goto_0

    .line 290
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_VideoRecordedCount:I

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 292
    goto :goto_2

    .line 300
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/htc/camera/component/TipsHelpController;->setTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;I)V

    .line 301
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mIntentExtra:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1800(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/component/TipsHelpController;->sendTopicActionBroadcast(Ljava/lang/String;I)V

    move v0, v3

    .line 302
    goto :goto_0
.end method

.method private checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 308
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suppressTopic() : didn\'t contain key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/component/TipsHelpController;->getTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)I

    move-result v0

    if-nez v0, :cond_2

    .line 315
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 328
    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/camera/component/TipsHelpController;->getTopicCount(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)I

    move-result v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/TipsHelpController;->updateTopicCount(Lcom/htc/camera/component/TipsHelpController$CameraTopic;I)V

    .line 320
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 322
    invoke-direct {p0, p1, v1}, Lcom/htc/camera/component/TipsHelpController;->setTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;I)V

    .line 323
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mIntentExtra:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1800(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/TipsHelpController;->sendTopicActionBroadcast(Ljava/lang/String;I)V

    .line 324
    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTopicCount(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    const-string v2, "getTopicCount() : m_Settings == null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefCount:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopicCount : topic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 262
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    const-string v2, "getTopicStatus() : m_Settings == null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefTopic:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1600(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopicStatus : topic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initTopicInfo()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 240
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->BURST:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_status_burst"

    const-string v2, "pref_topic_count_burst"

    const-string v3, "topic_tag-camera-continuous_shots"

    const/16 v4, 0x14

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->PANORAMA:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_status_panorama"

    const-string v2, "pref_topic_count_panorama"

    const-string v3, "topic_tag-camera-panoramic"

    const/16 v4, 0x28

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->ZOE:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_status_zoe"

    const-string v2, "pref_topic_count_zoe"

    const-string v3, "topic_tag-camera-capture_previous_moments"

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_status_hdr"

    const-string v2, "pref_topic_count_hdr"

    const-string v3, "topic_tag-camera-hdr"

    const/16 v4, 0x1e

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->VIDEO_HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_status_hdr"

    const-string v2, "pref_topic_count_video_hdr"

    const-string v3, "topic_tag-camera-hdr"

    sget-object v5, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v6, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    sget-object v7, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->SLOW_MOTION:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    const-string v1, "pref_topic_statuc_slow_motion"

    const-string v2, "pref_topic_count_slow_motion"

    const-string v3, "topic_tag-camera-slow_motion"

    const/4 v4, 0x5

    sget-object v5, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/camera/CameraMode;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private sendTopicActionBroadcast(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/htc/camera/component/TipsHelpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    const-string v2, "com.htc.learnmore.LOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "callingApp"

    const-string v3, "com.htc.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "actionCoverage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v2, "actionToDo"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTopicActionBroadcast() : topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method private setTopicStatus(Lcom/htc/camera/component/TipsHelpController$CameraTopic;I)V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    const-string v1, "setTopicStatus() : m_Settings == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefTopic:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1600(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateTopicCount(Lcom/htc/camera/component/TipsHelpController$CameraTopic;I)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;

    const-string v1, "updateTopicCount() : m_Settings == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    sget-object v0, Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mPrefCount:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$1900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    .line 231
    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 232
    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 235
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 236
    return-void
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/component/TipsHelpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/component/TipsHelpController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    .line 123
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/TipsHelpController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 124
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/TipsHelpController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 125
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    const-string v2, "pref_photo_taken_count"

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_PhotoTakenCount:I

    .line 126
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;

    const-string v2, "pref_video_recorded_count"

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/TipsHelpController;->m_VideoRecordedCount:I

    .line 128
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/TipsHelpController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/TipsHelpController$1;-><init>(Lcom/htc/camera/component/TipsHelpController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 168
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/TipsHelpController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/TipsHelpController$2;-><init>(Lcom/htc/camera/component/TipsHelpController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 202
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/TipsHelpController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/TipsHelpController$3;-><init>(Lcom/htc/camera/component/TipsHelpController;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 221
    return-void
.end method
