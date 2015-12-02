.class Lcom/htc/camera/CameraThread$30;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingLimitState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 5485
    iput-object p1, p0, Lcom/htc/camera/CameraThread$30;->this$0:Lcom/htc/camera/CameraThread;

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
            "Lcom/htc/camera/RecordingLimitState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingLimitState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5489
    iget-object v1, p0, Lcom/htc/camera/CameraThread$30;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingLimitState;

    # invokes: Lcom/htc/camera/CameraThread;->onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$3700(Lcom/htc/camera/CameraThread;Lcom/htc/camera/RecordingLimitState;)V

    .line 5490
    return-void
.end method
