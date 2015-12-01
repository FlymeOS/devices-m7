.class Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;
.super Ljava/lang/Object;
.source "ZoeFileEnabledStatisticController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

.field final synthetic val$activity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    iput-object p2, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 52
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    .line 56
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 57
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/zoe/ZoeCaptureMode;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->loadFromPreference()V

    .line 66
    :cond_2
    iget-boolean v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    if-ne v0, v1, :cond_6

    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, "ZOE_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    .line 72
    const-wide/16 v3, 0x3c

    cmp-long v0, v1, v3

    if-gtz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 77
    iget-object v3, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # setter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z
    invoke-static {v0, v5}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$102(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;Z)Z

    .line 96
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->saveToPreference()V

    goto/16 :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 86
    iget-object v1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_6
    iget-boolean v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, "ZOE_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # setter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mHasChanged:Z
    invoke-static {v0, v5}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$102(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;Z)Z

    .line 112
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->val$activity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->saveToPreference()V

    goto/16 :goto_0

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController$1;->this$0:Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;

    # getter for: Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->mZoeHistoryTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;->access$000(Lcom/htc/camera/bi/ZoeFileEnabledStatisticController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
