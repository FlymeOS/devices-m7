.class Lcom/htc/camera/component/ObjectTrackingController$1;
.super Ljava/lang/Object;
.source "ObjectTrackingController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingController;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingController$1;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController$1;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ObjectTrackingController;->access$002(Lcom/htc/camera/component/ObjectTrackingController;Z)Z

    .line 118
    :cond_0
    return-void
.end method
