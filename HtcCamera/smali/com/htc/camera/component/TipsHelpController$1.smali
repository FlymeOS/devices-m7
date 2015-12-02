.class Lcom/htc/camera/component/TipsHelpController$1;
.super Ljava/lang/Object;
.source "TipsHelpController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/TipsHelpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/TipsHelpController;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_5

    .line 135
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_Settings:Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$100(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_photo_taken_count"

    iget-object v2, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # ++operator for: Lcom/htc/camera/component/TipsHelpController;->m_PhotoTakenCount:I
    invoke-static {v2}, Lcom/htc/camera/component/TipsHelpController;->access$004(Lcom/htc/camera/component/TipsHelpController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$200(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$200(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 138
    :goto_0
    instance-of v1, v0, Lcom/htc/camera/effect/PanoramaScene;

    if-eqz v1, :cond_3

    .line 141
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->PANORAMA:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    # invokes: Lcom/htc/camera/component/TipsHelpController;->checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/TipsHelpController;->access$300(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/TipsHelpController;->access$400(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suppress panorama result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;
    invoke-static {}, Lcom/htc/camera/component/TipsHelpController;->access$800()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 161
    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_TopicList:Ljava/util/HashMap;
    invoke-static {}, Lcom/htc/camera/component/TipsHelpController;->access$800()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;

    # getter for: Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->mMode:Lcom/htc/camera/CameraMode;
    invoke-static {v1}, Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;->access$900(Lcom/htc/camera/component/TipsHelpController$CameraTopicInfo;)Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v3, :cond_1

    .line 162
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # invokes: Lcom/htc/camera/component/TipsHelpController;->checktoPromoteTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    invoke-static {v1, v0}, Lcom/htc/camera/component/TipsHelpController;->access$1000(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    goto :goto_2

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_3
    instance-of v0, v0, Lcom/htc/camera/effect/HdrScene;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    # invokes: Lcom/htc/camera/component/TipsHelpController;->checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/TipsHelpController;->access$300(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/TipsHelpController;->access$500(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suppress HDR result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$600(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/TipsHelpController;->access$600(Lcom/htc/camera/component/TipsHelpController;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->ZOE:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    # invokes: Lcom/htc/camera/component/TipsHelpController;->checktoSuppressTopic(Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/TipsHelpController;->access$300(Lcom/htc/camera/component/TipsHelpController;Lcom/htc/camera/component/TipsHelpController$CameraTopic;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/htc/camera/component/TipsHelpController$1;->this$0:Lcom/htc/camera/component/TipsHelpController;

    # getter for: Lcom/htc/camera/component/TipsHelpController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/TipsHelpController;->access$700(Lcom/htc/camera/component/TipsHelpController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suppress Zoe result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_5
    return-void
.end method
