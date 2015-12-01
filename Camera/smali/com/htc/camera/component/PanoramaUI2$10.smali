.class Lcom/htc/camera/component/PanoramaUI2$10;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v0}, Lcom/htc/camera/component/PanoramaUI2;->stopCapture()Z

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->hideThumbnailBar()V
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1200(Lcom/htc/camera/component/PanoramaUI2;)V

    .line 1143
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->hideReviewScreen()V
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1300(Lcom/htc/camera/component/PanoramaUI2;)V

    .line 1146
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$10;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->closeCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1400(Lcom/htc/camera/component/PanoramaUI2;)V

    goto :goto_0
.end method
