.class Lcom/htc/camera/effect/VideoSceneController$5;
.super Ljava/lang/Object;
.source "VideoSceneController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/VideoSceneController;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/VideoSceneController;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneController$5;->this$0:Lcom/htc/camera/effect/VideoSceneController;

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
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$5;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/effect/VideoSceneController;->setupResolutionProvider(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/VideoSceneController;->access$1000(Lcom/htc/camera/effect/VideoSceneController;I)V

    .line 180
    return-void
.end method
