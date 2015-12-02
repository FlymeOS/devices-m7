.class Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "VideoModeRecordStatisticController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/VideoModeRecordStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v0, v0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mComposeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mComposeKey:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_mediaTaken:I

    .line 77
    :cond_0
    return-void
.end method
