.class Lcom/htc/camera/component/ThumbnailUI$17;
.super Lcom/htc/camera/trigger/Trigger;
.source "ThumbnailUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$17;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$17;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$17;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$17;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1600(Lcom/htc/camera/component/ThumbnailUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$17;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1300(Lcom/htc/camera/component/ThumbnailUI;)V

    .line 803
    :cond_1
    return-void
.end method
