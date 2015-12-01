.class Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "VideoModeRecordStatisticController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/VideoModeRecordStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget v1, v0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_mediaTaken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_mediaTaken:I

    .line 85
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget-object v1, v1, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mComposeKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoModeRecordStatisticController;

    iget v2, v2, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_mediaTaken:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->setMediaCountInComposeKeyTable(Ljava/lang/String;I)V

    .line 86
    return-void
.end method
