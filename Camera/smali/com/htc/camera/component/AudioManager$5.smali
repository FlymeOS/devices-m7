.class Lcom/htc/camera/component/AudioManager$5;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$5;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 397
    sget-object v0, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$5;->this$0:Lcom/htc/camera/component/AudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/AudioManager$5;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-virtual {v1}, Lcom/htc/camera/component/AudioManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    # invokes: Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/component/AudioManager;->access$500(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/rotate/UIRotation;IZ)V

    .line 399
    :cond_0
    return-void
.end method
